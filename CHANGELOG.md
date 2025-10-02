# Changelog

This format tries to follow the [Common Changelog](https://common-changelog.org/) format.

## 0.0.6 - 2025-10-02

### Added

- Added KeyCloak charts and updated example configuration. ([commit](https://github.com/INTERSECT-SDK/helm-charts/commit/0c1c6f344ed33714b64566e2e28f0fd266e06393)) (Marshall McDonnell)
- Updated broker-http-proxy charts to `0.1.2` , adding MQTT support ([commit](https://github.com/INTERSECT-SDK/helm-charts/commit/3eb97f4d652b9f9e386d9de745f014bfcc834109)) (Lance Drane)

## 0.0.5 - 2025-04-15

### Fixed

- Fixed incorrect proxy chart value configuration. Users will no longer have to explicitly disable the proxy chart themselves. ([commit](https://github.com/INTERSECT-SDK/helm-charts/commit/9f39e56deb3f0e66701473081bfed26f7ed559b2)) (Lance Drane)

## 0.0.4 - 2025-03-20

### Added

- Added broker-http-proxy charts and updated example configuration ([commit](https://github.com/INTERSECT-SDK/helm-charts/commit/fcdc2d468746d46c3923c9f96382fabe31787685)) (Lance Drane)
- Added chart verification script ([commit](https://github.com/INTERSECT-SDK/helm-charts/commit/fcdc2d468746d46c3923c9f96382fabe31787685), [commit](https://github.com/INTERSECT-SDK/helm-charts/commit/379513ae2d33b60ca71a789aede295e7c8c55566)) (Lance Drane)

## 0.0.3 - 2025-02-27

### Fixed

- Fixed incorrect variable in `rabbitmq.conf` which would cause RabbitMQ to crash when parsing it ([commit](https://github.com/INTERSECT-SDK/helm-charts/commit/80cb8997d19343712ccbaba5cbd366ef755654c7)) (Lance Drane)

## 0.0.2 - 2025-02-27

**NOTE**: This chart release contains a bug in the default configuration, and should not be used. Use version 0.0.3.

## 0.0.1 - 2025-02-27

**NOTE**: This chart release contains a bug in the default configuration, and should not be used. Use version 0.0.3.

### Added

- simple Helm chart with just RabbitMQ and MINIO as options (Lance Drane)
