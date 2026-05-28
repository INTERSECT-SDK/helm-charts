#!/bin/sh

set -e

cd "$(dirname "$0")"
rc=0

for chart_dir in charts/*/Chart.yaml; do
	chart_dir="$(dirname "$chart_dir")"
	chart_name="$(basename "$chart_dir")"

	printf '%s\n' "========== VERIFYING CHART $chart_name ============"

	# make sure helm dependencies are up to date
	for stat in $(helm dependency list "$chart_dir" | tail -n +2 | awk '{print $4}'); do
		if [ "$stat" != "ok" ]; then
			helm dependency update "$chart_dir"
			break
		fi
	done

	for file in examples/"${chart_name}"/*.yaml lint-mocks/"${chart_name}"/*.yaml; do
		echo "------- VERIFYING $file --------"

		helm template "${chart_dir}" -f "$file" >/dev/null || {
			rc=1
			echo "--------- TEMPLATE VERIFICATION FAILED: $file --------"
		}

		helm lint "${chart_dir}" -f "$file" || {
			rc=1
			echo "--------- LINT VERIFICATION FAILED: $file --------"
		}

		echo "------- FINISHED VERIFYING $file --------"
		echo
	done
done

exit $rc
