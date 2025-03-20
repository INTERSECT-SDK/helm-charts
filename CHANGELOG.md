# Changelog

This format tries to follow the [Common Changelog](https://common-changelog.org/) format.

## 0.0.4 - 2025-03-20

### Added

- Added broker-http-proxy charts and updated example configuration (Lance Drane)
- Added chart verification script (Lance Drane)

## 0.0.3 - 2025-02-27

### Fixed

- Fixed incorrect variable in `rabbitmq.conf` which would cause RabbitMQ to crash when parsing it ([commit](https://github.com/INTERSECT-SDK/helm-charts/commit/80cb8997d19343712ccbaba5cbd366ef755654c7)) (Lance Drane)

## 0.0.2 - 2025-02-27

**NOTE**: This chart release contains a bug in the default configuration, and should not be used. Use version 0.0.3.

## 0.0.1 - 2025-02-27

**NOTE**: This chart release contains a bug in the default configuration, and should not be used. Use version 0.0.3.

### Added
- simple Helm chart with just RabbitMQ and MINIO as options (Lance Drane)
