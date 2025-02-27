# INTERSECT Helm charts

This repo is meant to manage publishment of the common INTERSECT Helm umbrella chart which should be used across ALL INTERSECT deployments.

This chart currently consists of:

- the message broker (with a common configuration)
- the data plane
- iHub

We will publish this chart to both this Gitlab instance and savannah.ornl.gov . Please note that any standalone charts will only be published to their appropriate repository.

Once all associated components are open-sourced, this chart may be open-sourced as well.

Note that this repo will NOT automatically kick off any triggers for any deployments themselves, deployments are expected to either be handled manually or utilize a "pull" based system (such as ArgoCD). All it will do is write the umbrella Helm chart.

## Chart usage

We maintain two charts: `intersect-unstable` and `intersect`:
- `intersect` is the STABLE version of the umbrella chart - this should correspond to the `main` branches of associated application repositories
- `intersect-unstable` is meant to be representative of the UNSTABLE version of the umbrella chart - this should correspond to the `next` branch of associated application repositories

For example user values you can use, see `examples/example-chart.values.yaml` .
