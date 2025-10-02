# INTERSECT Helm charts

This repo is meant to manage publishment of the common INTERSECT Helm umbrella chart which should be used across ALL INTERSECT deployments.

This chart currently consists of:

- the message broker (with a common configuration - currently, just RabbitMQ)
- the data plane (currently, just MINIO)
- [broker-http-proxy](https://github.com/INTERSECT-SDK/broker-http-proxy/)
- identity management / authentication ([keycloak](https://www.keycloak.org/))

Future applications we will include in this chart will be:

- [Registry service](https://github.com/INTERSECT-SDK/registry-service)
- iHub

## Chart usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  `helm repo add <alias> https://intersect-sdk.github.io/helm-charts`

If you had already added this repo earlier, run `helm repo update` to retrieve the latest versions of the packages.  You can then run `helm search repo <alias>` to see the charts.

Available charts:
- `intersect`

To install a chart:

    helm install <chart-name> <alias>/<chart-name>

To uninstall the chart:

    helm delete <chart-name>

If using an umbrella chart, add these lines to your `dependencies` section (change `version` accordingly):

```yaml
  - name: intersect
    repository: https://intersect-sdk.github.io/helm-charts/
    version: "0.0.3"
```
