## Python

These settings apply only when `--python` is specified on the command line.
Please also specify `--python-sdks-folder=<path to the root directory of your azure-sdk-for-python clone>`.

``` yaml $(python)
title: KubernetesConfigurationExtensionTypesMgmtClient
azure-arm: true
license-header: MICROSOFT_MIT_NO_VERSION
package-name: azure-mgmt-kubernetesconfiguration-extensiontypes
namespace: azure.mgmt.kubernetesconfiguration.extensiontypes
package-version: 1.0.0b1
clear-output-folder: true
```

``` yaml $(python)
no-namespace-folders: true
output-folder: $(python-sdks-folder)/kubernetesconfiguration/azure-mgmt-kubernetesconfiguration-extensiontypes/azure/mgmt/kubernetesconfiguration/extensiontypes
```
