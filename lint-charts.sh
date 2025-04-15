#!/bin/sh

cd "$(dirname "$0")" || exit 2

CHARTS_DIR="charts/intersect-core"

# make sure helm dependencies are up to date
for stat in $(helm dependency list "$CHARTS_DIR" | tail -n +2 | awk '{print $4}'); do 
  if [ "$stat" != "ok" ]; then
    helm dependency update "$CHARTS_DIR" || exit 1
    break
  fi
done

rc=0

for file in examples/*.yaml lint-mocks/*.yaml; do
  echo "------- VERIFYING $file --------"

  helm template "${CHARTS_DIR}" -f "$file" > /dev/null || {
    rc=1
    echo "--------- TEMPLATE VERIFICATION FAILED: $file --------"
  }

  helm lint "${CHARTS_DIR}" -f "$file" || {
    rc=1
    echo "--------- LINT VERIFICATION FAILED: $file --------"
  }

  echo "------- FINISHED VERIFYING $file --------"
  echo
done

exit $rc
