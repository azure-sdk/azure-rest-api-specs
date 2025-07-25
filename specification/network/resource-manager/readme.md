# Network

> see https://aka.ms/autorest

This is the AutoRest configuration file for Network.

---

## Getting Started

To build the SDK for Network, simply [Install AutoRest](https://aka.ms/autorest/install) and in this folder, run:

> `autorest`

To see additional help and options, run:

> `autorest --help`

---

## Configuration

### Basic Information

These are the global settings for the Network API.

``` yaml
title: NetworkManagementClient
description: Network Client
openapi-type: arm
tag: package-2024-07-01
```

### Tag: package-2024-09-preview
These settings apply only when `--tag=package-2024-09-preview` is specified on the command line.

```yaml $(tag) == 'package-2024-09-preview'
input-file:
  - Microsoft.Network/preview/2024-09-01-preview/networkManagerRoutingConfiguration.json
  - Microsoft.Network/preview/2024-09-01-preview/network.json
  - Microsoft.Network/stable/2024-07-01/applicationGateway.json
  - Microsoft.Network/stable/2024-07-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2024-07-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2024-07-01/availableDelegations.json
  - Microsoft.Network/stable/2024-07-01/availableServiceAliases.json
  - Microsoft.Network/stable/2024-07-01/azureFirewall.json
  - Microsoft.Network/stable/2024-07-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2024-07-01/azureWebCategory.json
  - Microsoft.Network/stable/2024-07-01/bastionHost.json
  - Microsoft.Network/stable/2024-07-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2024-07-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2024-07-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2024-07-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2024-07-01/customIpPrefix.json
  - Microsoft.Network/stable/2024-07-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2024-07-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2024-07-01/dscpConfiguration.json
  - Microsoft.Network/stable/2024-07-01/endpointService.json
  - Microsoft.Network/stable/2024-07-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2024-07-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2024-07-01/expressRoutePort.json
  - Microsoft.Network/stable/2024-07-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2024-07-01/firewallPolicy.json
  - Microsoft.Network/stable/2024-07-01/ipAddressManager.json
  - Microsoft.Network/stable/2024-07-01/ipAllocation.json
  - Microsoft.Network/stable/2024-07-01/ipGroups.json
  - Microsoft.Network/stable/2024-07-01/loadBalancer.json
  - Microsoft.Network/stable/2024-07-01/natGateway.json
  - Microsoft.Network/stable/2024-07-01/networkInterface.json
  - Microsoft.Network/stable/2024-07-01/networkManager.json
  - Microsoft.Network/stable/2024-07-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkManagerConnection.json
  - Microsoft.Network/stable/2024-07-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkManagerGroup.json
  - Microsoft.Network/stable/2024-07-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2024-07-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkProfile.json
  - Microsoft.Network/stable/2024-07-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2024-07-01/networkSecurityPerimeter.json
  - Microsoft.Network/stable/2024-07-01/networkVerifier.json
  - Microsoft.Network/stable/2024-07-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2024-07-01/networkWatcher.json
  - Microsoft.Network/stable/2024-07-01/operation.json
  - Microsoft.Network/stable/2024-07-01/privateEndpoint.json
  - Microsoft.Network/stable/2024-07-01/privateLinkService.json
  - Microsoft.Network/stable/2024-07-01/publicIpAddress.json
  - Microsoft.Network/stable/2024-07-01/publicIpPrefix.json
  - Microsoft.Network/stable/2024-07-01/routeFilter.json
  - Microsoft.Network/stable/2024-07-01/routeTable.json
  - Microsoft.Network/stable/2024-07-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2024-07-01/serviceCommunity.json
  - Microsoft.Network/stable/2024-07-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2024-07-01/serviceTags.json
  - Microsoft.Network/stable/2024-07-01/usage.json
  - Microsoft.Network/stable/2024-07-01/virtualNetwork.json
  - Microsoft.Network/stable/2024-07-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2024-07-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2024-07-01/virtualRouter.json
  - Microsoft.Network/stable/2024-07-01/virtualWan.json
  - Microsoft.Network/stable/2024-07-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2024-07-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2024-07-01/webapplicationfirewall.json
suppressions:
  - code: PutResponseCodes
    reason: Required for multiple response codes. Reviewed by ARM team.
    where:
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/resourceAssociations/{associationName}"].put
  - code: DeleteResponseCodes
    reason: Required for multiple response codes. Reviewed by ARM team.
    where: 
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/resourceAssociations/{associationName}"].delete
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/linkReferences/{linkReferenceName}"].delete
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/links/{linkName}"].delete
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}"].delete
  - code: TrackedResourcePatchOperation
    reason: False alarm.
    where:
      - $.definitions.NspProfile
      - $.definitions.NspAccessRule
      - $.definitions.NspAssociation
  - code: PatchIdentityProperty
    reason: False alarm.
    where:
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}"].patch.parameters[2]
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/flowLogs/{flowLogName}"].patch.parameters[3]
  - code: SystemDataDefinitionsCommonTypes
    from: networkVerifier.json
    reason: False alarm for common type errors.
  - code: SystemDataDefinitionsCommonTypes
    from: network.json
    reason: False alarm.
directive:
  - from: specification/common-types/resource-management/v6/types.json
    where: "$.definitions.ProxyResource"
    transform: >
      $["x-ms-client-name"] = "SecurityPerimeterProxyResource"
      
  - from: specification/common-types/resource-management/v6/types.json
    where: "$.definitions.Resource"
    transform: >
      $["x-ms-client-name"] = "SecurityPerimeterResource"

  - from: specification/common-types/resource-management/v6/types.json
    where: "$.definitions.systemData"
    transform: >
      $["x-ms-client-name"] = "SecurityPerimeterSystemData"
```
```

### Tag: package-2024-07-01

These settings apply only when `--tag=package-2024-07-01` is specified on the command line.

```yaml $(tag) == 'package-2024-07-01'
input-file:
  - Microsoft.Network/stable/2024-07-01/applicationGateway.json
  - Microsoft.Network/stable/2024-07-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2024-07-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2024-07-01/availableDelegations.json
  - Microsoft.Network/stable/2024-07-01/availableServiceAliases.json
  - Microsoft.Network/stable/2024-07-01/azureFirewall.json
  - Microsoft.Network/stable/2024-07-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2024-07-01/azureWebCategory.json
  - Microsoft.Network/stable/2024-07-01/bastionHost.json
  - Microsoft.Network/stable/2024-07-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2024-07-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2024-07-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2024-07-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2024-07-01/customIpPrefix.json
  - Microsoft.Network/stable/2024-07-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2024-07-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2024-07-01/dscpConfiguration.json
  - Microsoft.Network/stable/2024-07-01/endpointService.json
  - Microsoft.Network/stable/2024-07-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2024-07-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2024-07-01/expressRoutePort.json
  - Microsoft.Network/stable/2024-07-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2024-07-01/firewallPolicy.json
  - Microsoft.Network/stable/2024-07-01/ipAddressManager.json
  - Microsoft.Network/stable/2024-07-01/ipAllocation.json
  - Microsoft.Network/stable/2024-07-01/ipGroups.json
  - Microsoft.Network/stable/2024-07-01/loadBalancer.json
  - Microsoft.Network/stable/2024-07-01/natGateway.json
  - Microsoft.Network/stable/2024-07-01/network.json
  - Microsoft.Network/stable/2024-07-01/networkInterface.json
  - Microsoft.Network/stable/2024-07-01/networkManager.json
  - Microsoft.Network/stable/2024-07-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkManagerConnection.json
  - Microsoft.Network/stable/2024-07-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkManagerGroup.json
  - Microsoft.Network/stable/2024-07-01/networkManagerRoutingConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2024-07-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/stable/2024-07-01/networkProfile.json
  - Microsoft.Network/stable/2024-07-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2024-07-01/networkSecurityPerimeter.json
  - Microsoft.Network/stable/2024-07-01/networkVerifier.json
  - Microsoft.Network/stable/2024-07-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2024-07-01/networkWatcher.json
  - Microsoft.Network/stable/2024-07-01/operation.json
  - Microsoft.Network/stable/2024-07-01/privateEndpoint.json
  - Microsoft.Network/stable/2024-07-01/privateLinkService.json
  - Microsoft.Network/stable/2024-07-01/publicIpAddress.json
  - Microsoft.Network/stable/2024-07-01/publicIpPrefix.json
  - Microsoft.Network/stable/2024-07-01/routeFilter.json
  - Microsoft.Network/stable/2024-07-01/routeTable.json
  - Microsoft.Network/stable/2024-07-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2024-07-01/serviceCommunity.json
  - Microsoft.Network/stable/2024-07-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2024-07-01/serviceTags.json
  - Microsoft.Network/stable/2024-07-01/usage.json
  - Microsoft.Network/stable/2024-07-01/virtualNetwork.json
  - Microsoft.Network/stable/2024-07-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2024-07-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2024-07-01/virtualRouter.json
  - Microsoft.Network/stable/2024-07-01/virtualWan.json
  - Microsoft.Network/stable/2024-07-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2024-07-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2024-07-01/webapplicationfirewall.json
suppressions:
  - code: PutResponseCodes
    reason: Required for multiple response codes. Reviewed by ARM team.
    where:
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/resourceAssociations/{associationName}"].put
  - code: DeleteResponseCodes
    reason: Required for multiple response codes. Reviewed by ARM team.
    where: 
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/resourceAssociations/{associationName}"].delete
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/linkReferences/{linkReferenceName}"].delete
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/links/{linkName}"].delete
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}"].delete
  - code: TrackedResourcePatchOperation
    reason: False alarm.
    where:
      - $.definitions.NspProfile
      - $.definitions.NspAccessRule
      - $.definitions.NspAssociation
  - code: PatchIdentityProperty
    reason: False alarm.
    where:
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}"].patch.parameters[2]
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/flowLogs/{flowLogName}"].patch.parameters[3]
  - code: SystemDataDefinitionsCommonTypes
    from: networkVerifier.json
    reason: False alarm for common type errors.
  - code: SystemDataDefinitionsCommonTypes
    from: network.json
    reason: False alarm.
directive:
  - from: specification/common-types/resource-management/v6/types.json
    where: "$.definitions.ProxyResource"
    transform: >
      $["x-ms-client-name"] = "SecurityPerimeterProxyResource"
      
  - from: specification/common-types/resource-management/v6/types.json
    where: "$.definitions.Resource"
    transform: >
      $["x-ms-client-name"] = "SecurityPerimeterResource"

  - from: specification/common-types/resource-management/v6/types.json
    where: "$.definitions.systemData"
    transform: >
      $["x-ms-client-name"] = "SecurityPerimeterSystemData"
```

### Tag: package-2024-06-preview
These settings apply only when `--tag=package-2024-06-preview` is specified on the command line.

```yaml $(tag) == 'package-2024-06-preview'
input-file:
  - Microsoft.Network/preview/2024-06-01-preview/networkSecurityPerimeter.json
  - Microsoft.Network/preview/2024-06-01-preview/network.json
  - Microsoft.Network/stable/2024-05-01/applicationGateway.json
  - Microsoft.Network/stable/2024-05-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2024-05-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2024-05-01/availableDelegations.json
  - Microsoft.Network/stable/2024-05-01/availableServiceAliases.json
  - Microsoft.Network/stable/2024-05-01/azureFirewall.json
  - Microsoft.Network/stable/2024-05-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2024-05-01/azureWebCategory.json
  - Microsoft.Network/stable/2024-05-01/bastionHost.json
  - Microsoft.Network/stable/2024-05-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2024-05-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2024-05-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2024-05-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2024-05-01/customIpPrefix.json
  - Microsoft.Network/stable/2024-05-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2024-05-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2024-05-01/dscpConfiguration.json
  - Microsoft.Network/stable/2024-05-01/endpointService.json
  - Microsoft.Network/stable/2024-05-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2024-05-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2024-05-01/expressRoutePort.json
  - Microsoft.Network/stable/2024-05-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2024-05-01/firewallPolicy.json
  - Microsoft.Network/stable/2024-05-01/ipAddressManager.json
  - Microsoft.Network/stable/2024-05-01/ipAllocation.json
  - Microsoft.Network/stable/2024-05-01/ipGroups.json
  - Microsoft.Network/stable/2024-05-01/loadBalancer.json
  - Microsoft.Network/stable/2024-05-01/natGateway.json
  - Microsoft.Network/stable/2024-05-01/networkInterface.json
  - Microsoft.Network/stable/2024-05-01/networkManager.json
  - Microsoft.Network/stable/2024-05-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkManagerConnection.json
  - Microsoft.Network/stable/2024-05-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkManagerGroup.json
  - Microsoft.Network/stable/2024-05-01/networkManagerRoutingConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2024-05-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkProfile.json
  - Microsoft.Network/stable/2024-05-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2024-05-01/networkVerifier.json
  - Microsoft.Network/stable/2024-05-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2024-05-01/networkWatcher.json
  - Microsoft.Network/stable/2024-05-01/operation.json
  - Microsoft.Network/stable/2024-05-01/privateEndpoint.json
  - Microsoft.Network/stable/2024-05-01/privateLinkService.json
  - Microsoft.Network/stable/2024-05-01/publicIpAddress.json
  - Microsoft.Network/stable/2024-05-01/publicIpPrefix.json
  - Microsoft.Network/stable/2024-05-01/routeFilter.json
  - Microsoft.Network/stable/2024-05-01/routeTable.json
  - Microsoft.Network/stable/2024-05-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2024-05-01/serviceCommunity.json
  - Microsoft.Network/stable/2024-05-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2024-05-01/serviceTags.json
  - Microsoft.Network/stable/2024-05-01/usage.json
  - Microsoft.Network/stable/2024-05-01/virtualNetwork.json
  - Microsoft.Network/stable/2024-05-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2024-05-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2024-05-01/virtualRouter.json
  - Microsoft.Network/stable/2024-05-01/virtualWan.json
  - Microsoft.Network/stable/2024-05-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2024-05-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2024-05-01/webapplicationfirewall.json
suppressions:
  - code: SystemDataDefinitionsCommonTypes
    from: networkVerifier.json
    reason: False alarm for common type errors.
  - code: SystemDataDefinitionsCommonTypes
    from: network.json
    reason: False alarm.
  - code: MissingSegmentsInNestedResourceListOperation
    from: networkVerifier.json
    reason: False alarm.
  - code: MissingSegmentsInNestedResourceListOperation
    from: ipAddressManager.json
    reason: False alarm.
  - code: PatchIdentityProperty
    reason: False alarm.
    where:
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}"].patch.parameters[2]
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/flowLogs/{flowLogName}"].patch.parameters[3]
  - code: PutResponseCodes
    reason: Required for multiple response codes. Reviewed by ARM team.
    where:
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/resourceAssociations/{associationName}"].put
  - code: DeleteResponseCodes
    reason: Required for multiple response codes. Reviewed by ARM team.
    where: 
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/resourceAssociations/{associationName}"].delete
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/linkReferences/{linkReferenceName}"].delete
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}/links/{linkName}"].delete
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkSecurityPerimeters/{networkSecurityPerimeterName}"].delete
  - code: TrackedResourcePatchOperation
    reason: False alarm.
    where:
      - $.definitions.NspProfile
      - $.definitions.NspAccessRule
      - $.definitions.NspAssociation
```

### Tag: package-2024-05

These settings apply only when `--tag=package-2024-05` is specified on the command line.

```yaml $(tag) == 'package-2024-05'
input-file:
  - Microsoft.Network/stable/2024-05-01/applicationGateway.json
  - Microsoft.Network/stable/2024-05-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2024-05-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2024-05-01/availableDelegations.json
  - Microsoft.Network/stable/2024-05-01/availableServiceAliases.json
  - Microsoft.Network/stable/2024-05-01/azureFirewall.json
  - Microsoft.Network/stable/2024-05-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2024-05-01/azureWebCategory.json
  - Microsoft.Network/stable/2024-05-01/bastionHost.json
  - Microsoft.Network/stable/2024-05-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2024-05-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2024-05-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2024-05-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2024-05-01/customIpPrefix.json
  - Microsoft.Network/stable/2024-05-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2024-05-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2024-05-01/dscpConfiguration.json
  - Microsoft.Network/stable/2024-05-01/endpointService.json
  - Microsoft.Network/stable/2024-05-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2024-05-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2024-05-01/expressRoutePort.json
  - Microsoft.Network/stable/2024-05-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2024-05-01/firewallPolicy.json
  - Microsoft.Network/stable/2024-05-01/ipAddressManager.json
  - Microsoft.Network/stable/2024-05-01/ipAllocation.json
  - Microsoft.Network/stable/2024-05-01/ipGroups.json
  - Microsoft.Network/stable/2024-05-01/loadBalancer.json
  - Microsoft.Network/stable/2024-05-01/natGateway.json
  - Microsoft.Network/stable/2024-05-01/network.json
  - Microsoft.Network/stable/2024-05-01/networkInterface.json
  - Microsoft.Network/stable/2024-05-01/networkManager.json
  - Microsoft.Network/stable/2024-05-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkManagerConnection.json
  - Microsoft.Network/stable/2024-05-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkManagerGroup.json
  - Microsoft.Network/stable/2024-05-01/networkManagerRoutingConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2024-05-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/stable/2024-05-01/networkProfile.json
  - Microsoft.Network/stable/2024-05-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2024-05-01/networkVerifier.json
  - Microsoft.Network/stable/2024-05-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2024-05-01/networkWatcher.json
  - Microsoft.Network/stable/2024-05-01/operation.json
  - Microsoft.Network/stable/2024-05-01/privateEndpoint.json
  - Microsoft.Network/stable/2024-05-01/privateLinkService.json
  - Microsoft.Network/stable/2024-05-01/publicIpAddress.json
  - Microsoft.Network/stable/2024-05-01/publicIpPrefix.json
  - Microsoft.Network/stable/2024-05-01/routeFilter.json
  - Microsoft.Network/stable/2024-05-01/routeTable.json
  - Microsoft.Network/stable/2024-05-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2024-05-01/serviceCommunity.json
  - Microsoft.Network/stable/2024-05-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2024-05-01/serviceTags.json
  - Microsoft.Network/stable/2024-05-01/usage.json
  - Microsoft.Network/stable/2024-05-01/virtualNetwork.json
  - Microsoft.Network/stable/2024-05-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2024-05-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2024-05-01/virtualRouter.json
  - Microsoft.Network/stable/2024-05-01/virtualWan.json
  - Microsoft.Network/stable/2024-05-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2024-05-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2024-05-01/webapplicationfirewall.json
suppressions:
  - code: SystemDataDefinitionsCommonTypes
    from: networkVerifier.json
    reason: False alarm for common type errors.
  - code: SystemDataDefinitionsCommonTypes
    from: network.json
    reason: False alarm.
  - code: MissingSegmentsInNestedResourceListOperation
    from: networkVerifier.json
    reason: False alarm.
  - code: MissingSegmentsInNestedResourceListOperation
    from: ipAddressManager.json
    reason: False alarm.
  - code: PatchIdentityProperty
    reason: False alarm.
    where:
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}"].patch.parameters[2]
      - $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/flowLogs/{flowLogName}"].patch.parameters[3]

```

### Tag: package-2024-03

These settings apply only when `--tag=package-2024-03` is specified on the command line.

```yaml $(tag) == 'package-2024-03'
input-file:
  - Microsoft.Network/stable/2024-03-01/applicationGateway.json
  - Microsoft.Network/stable/2024-03-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2024-03-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2024-03-01/availableDelegations.json
  - Microsoft.Network/stable/2024-03-01/availableServiceAliases.json
  - Microsoft.Network/stable/2024-03-01/azureFirewall.json
  - Microsoft.Network/stable/2024-03-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2024-03-01/azureWebCategory.json
  - Microsoft.Network/stable/2024-03-01/bastionHost.json
  - Microsoft.Network/stable/2024-03-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2024-03-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2024-03-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2024-03-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2024-03-01/customIpPrefix.json
  - Microsoft.Network/stable/2024-03-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2024-03-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2024-03-01/dscpConfiguration.json
  - Microsoft.Network/stable/2024-03-01/endpointService.json
  - Microsoft.Network/stable/2024-03-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2024-03-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2024-03-01/expressRoutePort.json
  - Microsoft.Network/stable/2024-03-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2024-03-01/firewallPolicy.json
  - Microsoft.Network/stable/2024-03-01/ipAllocation.json
  - Microsoft.Network/stable/2024-03-01/ipGroups.json
  - Microsoft.Network/stable/2024-03-01/loadBalancer.json
  - Microsoft.Network/stable/2024-03-01/natGateway.json
  - Microsoft.Network/stable/2024-03-01/network.json
  - Microsoft.Network/stable/2024-03-01/networkInterface.json
  - Microsoft.Network/stable/2024-03-01/networkManager.json
  - Microsoft.Network/stable/2024-03-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2024-03-01/networkManagerConnection.json
  - Microsoft.Network/stable/2024-03-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2024-03-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2024-03-01/networkManagerGroup.json
  - Microsoft.Network/stable/2024-03-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2024-03-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2024-03-01/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/stable/2024-03-01/networkManagerRoutingConfiguration.json
  - Microsoft.Network/stable/2024-03-01/networkProfile.json
  - Microsoft.Network/stable/2024-03-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2024-03-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2024-03-01/networkWatcher.json
  - Microsoft.Network/stable/2024-03-01/operation.json
  - Microsoft.Network/stable/2024-03-01/privateEndpoint.json
  - Microsoft.Network/stable/2024-03-01/privateLinkService.json
  - Microsoft.Network/stable/2024-03-01/publicIpAddress.json
  - Microsoft.Network/stable/2024-03-01/publicIpPrefix.json
  - Microsoft.Network/stable/2024-03-01/routeFilter.json
  - Microsoft.Network/stable/2024-03-01/routeTable.json
  - Microsoft.Network/stable/2024-03-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2024-03-01/serviceCommunity.json
  - Microsoft.Network/stable/2024-03-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2024-03-01/serviceTags.json
  - Microsoft.Network/stable/2024-03-01/usage.json
  - Microsoft.Network/stable/2024-03-01/virtualNetwork.json
  - Microsoft.Network/stable/2024-03-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2024-03-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2024-03-01/virtualRouter.json
  - Microsoft.Network/stable/2024-03-01/virtualWan.json
  - Microsoft.Network/stable/2024-03-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2024-03-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2024-03-01/webapplicationfirewall.json

suppressions:
  - code: PatchIdentityProperty
    from: networkWatcher.json
    reason: False alarm.
  - code: PatchIdentityProperty
    from: virtualNetworkGateway.json
    reason: False alarm.
```

### Tag: package-2024-01-preview

These settings apply only when `--tag=package-2024-01-preview` is specified on the command line.

```yaml $(tag) == 'package-2024-01-preview'
input-file:
  - Microsoft.Network/preview/2024-01-01-preview/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/preview/2024-01-01-preview/networkVerifier.json
  - Microsoft.Network/preview/2024-01-01-preview/ipAddressManager.json
  - Microsoft.Network/preview/2024-01-01-preview/network.json
  - Microsoft.Network/preview/2024-01-01-preview/networkManager.json
  - Microsoft.Network/stable/2024-01-01/applicationGateway.json
  - Microsoft.Network/stable/2024-01-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2024-01-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2024-01-01/availableDelegations.json
  - Microsoft.Network/stable/2024-01-01/availableServiceAliases.json
  - Microsoft.Network/stable/2024-01-01/azureFirewall.json
  - Microsoft.Network/stable/2024-01-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2024-01-01/azureWebCategory.json
  - Microsoft.Network/stable/2024-01-01/bastionHost.json
  - Microsoft.Network/stable/2024-01-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2024-01-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2024-01-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2024-01-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2024-01-01/customIpPrefix.json
  - Microsoft.Network/stable/2024-01-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2024-01-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2024-01-01/dscpConfiguration.json
  - Microsoft.Network/stable/2024-01-01/endpointService.json
  - Microsoft.Network/stable/2024-01-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2024-01-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2024-01-01/expressRoutePort.json
  - Microsoft.Network/stable/2024-01-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2024-01-01/firewallPolicy.json
  - Microsoft.Network/stable/2024-01-01/ipAllocation.json
  - Microsoft.Network/stable/2024-01-01/ipGroups.json
  - Microsoft.Network/stable/2024-01-01/loadBalancer.json
  - Microsoft.Network/stable/2024-01-01/natGateway.json
  - Microsoft.Network/stable/2024-01-01/network.json
  - Microsoft.Network/stable/2024-01-01/networkInterface.json
  - Microsoft.Network/stable/2024-01-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2024-01-01/networkManagerConnection.json
  - Microsoft.Network/stable/2024-01-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2024-01-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2024-01-01/networkManagerGroup.json
  - Microsoft.Network/stable/2024-01-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2024-01-01/networkProfile.json
  - Microsoft.Network/stable/2024-01-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2024-01-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2024-01-01/networkWatcher.json
  - Microsoft.Network/stable/2024-01-01/operation.json
  - Microsoft.Network/stable/2024-01-01/privateEndpoint.json
  - Microsoft.Network/stable/2024-01-01/privateLinkService.json
  - Microsoft.Network/stable/2024-01-01/publicIpAddress.json
  - Microsoft.Network/stable/2024-01-01/publicIpPrefix.json
  - Microsoft.Network/stable/2024-01-01/routeFilter.json
  - Microsoft.Network/stable/2024-01-01/routeTable.json
  - Microsoft.Network/stable/2024-01-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2024-01-01/serviceCommunity.json
  - Microsoft.Network/stable/2024-01-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2024-01-01/serviceTags.json
  - Microsoft.Network/stable/2024-01-01/usage.json
  - Microsoft.Network/stable/2024-01-01/virtualNetwork.json
  - Microsoft.Network/stable/2024-01-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2024-01-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2024-01-01/virtualRouter.json
  - Microsoft.Network/stable/2024-01-01/virtualWan.json
  - Microsoft.Network/stable/2024-01-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2024-01-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2024-01-01/webapplicationfirewall.json

suppressions:
  - code: ImplementPrivateEndpointAPIs
    from: networkVerifier.json
    reason: False alarm.
  - code: ImplementPrivateEndpointAPIs
    from: ipAddressManager.json
    reason: False alarm.
  - code: ImplementPrivateEndpointAPIs
    from: networkManagerSecurityAdminConfiguration.json
    reason: False alarm.
  - code: MissingSegmentsInNestedResourceListOperation
    from: networkVerifier.json
    reason: False alarm.
  - code: MissingSegmentsInNestedResourceListOperation
    from: ipAddressManager.json
    reason: False alarm.
  - code: MissingSegmentsInNestedResourceListOperation
    from: networkManagerSecurityAdminConfiguration.json
    reason: False alarm.
  - code: PatchIdentityProperty
    reason: False alarm.
  - code: BodyTopLevelProperties
    from: networkVerifier.json
    reason: Bug.
  - code: BodyTopLevelProperties
    from: ipAddressManager.json
    reason: Bug.
  - code: BodyTopLevelProperties
    from: networkManagerSecurityAdminConfiguration.json
    reason: Bug.
  - code: SystemDataDefinitionsCommonTypes
    from: networkVerifier.json
    reason: False alarm for common type errors.
  - code: SystemDataDefinitionsCommonTypes
    from: network.json
    reason: False alarm for common type errors.
```

### Tag: package-2024-01

These settings apply only when `--tag=package-2024-01` is specified on the command line.

```yaml $(tag) == 'package-2024-01'
input-file:
  - Microsoft.Network/stable/2024-01-01/applicationGateway.json
  - Microsoft.Network/stable/2024-01-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2024-01-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2024-01-01/availableDelegations.json
  - Microsoft.Network/stable/2024-01-01/availableServiceAliases.json
  - Microsoft.Network/stable/2024-01-01/azureFirewall.json
  - Microsoft.Network/stable/2024-01-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2024-01-01/azureWebCategory.json
  - Microsoft.Network/stable/2024-01-01/bastionHost.json
  - Microsoft.Network/stable/2024-01-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2024-01-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2024-01-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2024-01-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2024-01-01/customIpPrefix.json
  - Microsoft.Network/stable/2024-01-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2024-01-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2024-01-01/dscpConfiguration.json
  - Microsoft.Network/stable/2024-01-01/endpointService.json
  - Microsoft.Network/stable/2024-01-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2024-01-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2024-01-01/expressRoutePort.json
  - Microsoft.Network/stable/2024-01-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2024-01-01/firewallPolicy.json
  - Microsoft.Network/stable/2024-01-01/ipAllocation.json
  - Microsoft.Network/stable/2024-01-01/ipGroups.json
  - Microsoft.Network/stable/2024-01-01/loadBalancer.json
  - Microsoft.Network/stable/2024-01-01/natGateway.json
  - Microsoft.Network/stable/2024-01-01/network.json
  - Microsoft.Network/stable/2024-01-01/networkInterface.json
  - Microsoft.Network/stable/2024-01-01/networkManager.json
  - Microsoft.Network/stable/2024-01-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2024-01-01/networkManagerConnection.json
  - Microsoft.Network/stable/2024-01-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2024-01-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2024-01-01/networkManagerGroup.json
  - Microsoft.Network/stable/2024-01-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2024-01-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2024-01-01/networkProfile.json
  - Microsoft.Network/stable/2024-01-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2024-01-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2024-01-01/networkWatcher.json
  - Microsoft.Network/stable/2024-01-01/operation.json
  - Microsoft.Network/stable/2024-01-01/privateEndpoint.json
  - Microsoft.Network/stable/2024-01-01/privateLinkService.json
  - Microsoft.Network/stable/2024-01-01/publicIpAddress.json
  - Microsoft.Network/stable/2024-01-01/publicIpPrefix.json
  - Microsoft.Network/stable/2024-01-01/routeFilter.json
  - Microsoft.Network/stable/2024-01-01/routeTable.json
  - Microsoft.Network/stable/2024-01-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2024-01-01/serviceCommunity.json
  - Microsoft.Network/stable/2024-01-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2024-01-01/serviceTags.json
  - Microsoft.Network/stable/2024-01-01/usage.json
  - Microsoft.Network/stable/2024-01-01/virtualNetwork.json
  - Microsoft.Network/stable/2024-01-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2024-01-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2024-01-01/virtualRouter.json
  - Microsoft.Network/stable/2024-01-01/virtualWan.json
  - Microsoft.Network/stable/2024-01-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2024-01-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2024-01-01/webapplicationfirewall.json

suppressions:
  - code: ImplementPrivateEndpointAPIs
    reason: False alarm.
  - code: PatchIdentityProperty
    reason: False alarm.
```

### Tag: package-2023-11-preview
These settings apply only when `--tag=package-2023-11-preview` is specified on the command line.

```yaml $(tag) == 'package-2023-11-preview'
input-file:
  - Microsoft.Network/preview/2022-02-01-preview/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/preview/2023-03-01-preview/networkManagerRoutingConfiguration.json
  - Microsoft.Network/stable/2023-11-01/applicationGateway.json
  - Microsoft.Network/stable/2023-11-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2023-11-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2023-11-01/availableDelegations.json
  - Microsoft.Network/stable/2023-11-01/availableServiceAliases.json
  - Microsoft.Network/stable/2023-11-01/azureFirewall.json
  - Microsoft.Network/stable/2023-11-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2023-11-01/azureWebCategory.json
  - Microsoft.Network/stable/2023-11-01/bastionHost.json
  - Microsoft.Network/stable/2023-11-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2023-11-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2023-11-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2023-11-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2023-11-01/customIpPrefix.json
  - Microsoft.Network/stable/2023-11-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2023-11-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2023-11-01/dscpConfiguration.json
  - Microsoft.Network/stable/2023-11-01/endpointService.json
  - Microsoft.Network/stable/2023-11-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2023-11-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2023-11-01/expressRoutePort.json
  - Microsoft.Network/stable/2023-11-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2023-11-01/firewallPolicy.json
  - Microsoft.Network/stable/2023-11-01/ipAllocation.json
  - Microsoft.Network/stable/2023-11-01/ipGroups.json
  - Microsoft.Network/stable/2023-11-01/loadBalancer.json
  - Microsoft.Network/stable/2023-11-01/natGateway.json
  - Microsoft.Network/stable/2023-11-01/network.json
  - Microsoft.Network/stable/2023-11-01/networkInterface.json
  - Microsoft.Network/stable/2023-11-01/networkManager.json
  - Microsoft.Network/stable/2023-11-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2023-11-01/networkManagerConnection.json
  - Microsoft.Network/stable/2023-11-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2023-11-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2023-11-01/networkManagerGroup.json
  - Microsoft.Network/stable/2023-11-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2023-11-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2023-11-01/networkProfile.json
  - Microsoft.Network/stable/2023-11-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2023-11-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2023-11-01/networkWatcher.json
  - Microsoft.Network/stable/2023-11-01/operation.json
  - Microsoft.Network/stable/2023-11-01/privateEndpoint.json
  - Microsoft.Network/stable/2023-11-01/privateLinkService.json
  - Microsoft.Network/stable/2023-11-01/publicIpAddress.json
  - Microsoft.Network/stable/2023-11-01/publicIpPrefix.json
  - Microsoft.Network/stable/2023-11-01/routeFilter.json
  - Microsoft.Network/stable/2023-11-01/routeTable.json
  - Microsoft.Network/stable/2023-11-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2023-11-01/serviceCommunity.json
  - Microsoft.Network/stable/2023-11-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2023-11-01/serviceTags.json
  - Microsoft.Network/stable/2023-11-01/usage.json
  - Microsoft.Network/stable/2023-11-01/virtualNetwork.json
  - Microsoft.Network/stable/2023-11-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2023-11-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2023-11-01/virtualRouter.json
  - Microsoft.Network/stable/2023-11-01/virtualWan.json
  - Microsoft.Network/stable/2023-11-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2023-11-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2023-11-01/webapplicationfirewall.json
```

### Tag: package-2023-11

These settings apply only when `--tag=package-2023-11` is specified on the command line.

```yaml $(tag) == 'package-2023-11'
input-file:
  - Microsoft.Network/stable/2023-11-01/applicationGateway.json
  - Microsoft.Network/stable/2023-11-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2023-11-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2023-11-01/availableDelegations.json
  - Microsoft.Network/stable/2023-11-01/availableServiceAliases.json
  - Microsoft.Network/stable/2023-11-01/azureFirewall.json
  - Microsoft.Network/stable/2023-11-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2023-11-01/azureWebCategory.json
  - Microsoft.Network/stable/2023-11-01/bastionHost.json
  - Microsoft.Network/stable/2023-11-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2023-11-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2023-11-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2023-11-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2023-11-01/customIpPrefix.json
  - Microsoft.Network/stable/2023-11-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2023-11-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2023-11-01/dscpConfiguration.json
  - Microsoft.Network/stable/2023-11-01/endpointService.json
  - Microsoft.Network/stable/2023-11-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2023-11-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2023-11-01/expressRoutePort.json
  - Microsoft.Network/stable/2023-11-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2023-11-01/firewallPolicy.json
  - Microsoft.Network/stable/2023-11-01/ipAllocation.json
  - Microsoft.Network/stable/2023-11-01/ipGroups.json
  - Microsoft.Network/stable/2023-11-01/loadBalancer.json
  - Microsoft.Network/stable/2023-11-01/natGateway.json
  - Microsoft.Network/stable/2023-11-01/network.json
  - Microsoft.Network/stable/2023-11-01/networkInterface.json
  - Microsoft.Network/stable/2023-11-01/networkManager.json
  - Microsoft.Network/stable/2023-11-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2023-11-01/networkManagerConnection.json
  - Microsoft.Network/stable/2023-11-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2023-11-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2023-11-01/networkManagerGroup.json
  - Microsoft.Network/stable/2023-11-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2023-11-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2023-11-01/networkProfile.json
  - Microsoft.Network/stable/2023-11-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2023-11-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2023-11-01/networkWatcher.json
  - Microsoft.Network/stable/2023-11-01/operation.json
  - Microsoft.Network/stable/2023-11-01/privateEndpoint.json
  - Microsoft.Network/stable/2023-11-01/privateLinkService.json
  - Microsoft.Network/stable/2023-11-01/publicIpAddress.json
  - Microsoft.Network/stable/2023-11-01/publicIpPrefix.json
  - Microsoft.Network/stable/2023-11-01/routeFilter.json
  - Microsoft.Network/stable/2023-11-01/routeTable.json
  - Microsoft.Network/stable/2023-11-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2023-11-01/serviceCommunity.json
  - Microsoft.Network/stable/2023-11-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2023-11-01/serviceTags.json
  - Microsoft.Network/stable/2023-11-01/usage.json
  - Microsoft.Network/stable/2023-11-01/virtualNetwork.json
  - Microsoft.Network/stable/2023-11-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2023-11-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2023-11-01/virtualRouter.json
  - Microsoft.Network/stable/2023-11-01/virtualWan.json
  - Microsoft.Network/stable/2023-11-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2023-11-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2023-11-01/webapplicationfirewall.json
```
### Tag: package-2023-09

These settings apply only when `--tag=package-2023-09` is specified on the command line.

``` yaml $(tag) == 'package-2023-09'
input-file:
  - Microsoft.Network/stable/2023-09-01/applicationGateway.json
  - Microsoft.Network/stable/2023-09-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2023-09-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2023-09-01/availableDelegations.json
  - Microsoft.Network/stable/2023-09-01/availableServiceAliases.json
  - Microsoft.Network/stable/2023-09-01/azureFirewall.json
  - Microsoft.Network/stable/2023-09-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2023-09-01/azureWebCategory.json
  - Microsoft.Network/stable/2023-09-01/bastionHost.json
  - Microsoft.Network/stable/2023-09-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2023-09-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2023-09-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2023-09-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2023-09-01/customIpPrefix.json
  - Microsoft.Network/stable/2023-09-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2023-09-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2023-09-01/dscpConfiguration.json
  - Microsoft.Network/stable/2023-09-01/endpointService.json
  - Microsoft.Network/stable/2023-09-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2023-09-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2023-09-01/expressRoutePort.json
  - Microsoft.Network/stable/2023-09-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2023-09-01/firewallPolicy.json
  - Microsoft.Network/stable/2023-09-01/ipAllocation.json
  - Microsoft.Network/stable/2023-09-01/ipGroups.json
  - Microsoft.Network/stable/2023-09-01/loadBalancer.json
  - Microsoft.Network/stable/2023-09-01/natGateway.json
  - Microsoft.Network/stable/2023-09-01/network.json
  - Microsoft.Network/stable/2023-09-01/networkInterface.json
  - Microsoft.Network/stable/2023-09-01/networkManager.json
  - Microsoft.Network/stable/2023-09-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2023-09-01/networkManagerConnection.json
  - Microsoft.Network/stable/2023-09-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2023-09-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2023-09-01/networkManagerGroup.json
  - Microsoft.Network/stable/2023-09-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2023-09-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2023-09-01/networkProfile.json
  - Microsoft.Network/stable/2023-09-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2023-09-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2023-09-01/networkWatcher.json
  - Microsoft.Network/stable/2023-09-01/operation.json
  - Microsoft.Network/stable/2023-09-01/privateEndpoint.json
  - Microsoft.Network/stable/2023-09-01/privateLinkService.json
  - Microsoft.Network/stable/2023-09-01/publicIpAddress.json
  - Microsoft.Network/stable/2023-09-01/publicIpPrefix.json
  - Microsoft.Network/stable/2023-09-01/routeFilter.json
  - Microsoft.Network/stable/2023-09-01/routeTable.json
  - Microsoft.Network/stable/2023-09-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2023-09-01/serviceCommunity.json
  - Microsoft.Network/stable/2023-09-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2023-09-01/serviceTags.json
  - Microsoft.Network/stable/2023-09-01/usage.json
  - Microsoft.Network/stable/2023-09-01/virtualNetwork.json
  - Microsoft.Network/stable/2023-09-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2023-09-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2023-09-01/virtualRouter.json
  - Microsoft.Network/stable/2023-09-01/virtualWan.json
  - Microsoft.Network/stable/2023-09-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2023-09-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2023-09-01/webapplicationfirewall.json
```

### Tag: package-2023-08-preview

These settings apply only when `--tag=package-2023-08-preview` is specified on the command line.

``` yaml $(tag) == 'package-2023-08-preview'
input-file:
  - Microsoft.Network/preview/2023-08-01-preview/network.json
  - Microsoft.Network/preview/2023-08-01-preview/networkSecurityPerimeter.json
```

### Tag: package-2023-07-preview

These settings apply only when `--tag=package-2023-07-preview` is specified on the command line.

``` yaml $(tag) == 'package-2023-07-preview'
input-file:
  - Microsoft.Network/preview/2023-07-01-preview/network.json
  - Microsoft.Network/preview/2023-07-01-preview/networkSecurityPerimeter.json
```

### Tag: package-2023-06

These settings apply only when `--tag=package-2023-06` is specified on the command line.

``` yaml $(tag) == 'package-2023-06'
input-file:
  - Microsoft.Network/stable/2023-06-01/applicationGateway.json
  - Microsoft.Network/stable/2023-06-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2023-06-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2023-06-01/availableDelegations.json
  - Microsoft.Network/stable/2023-06-01/availableServiceAliases.json
  - Microsoft.Network/stable/2023-06-01/azureFirewall.json
  - Microsoft.Network/stable/2023-06-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2023-06-01/azureWebCategory.json
  - Microsoft.Network/stable/2023-06-01/bastionHost.json
  - Microsoft.Network/stable/2023-06-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2023-06-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2023-06-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2023-06-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2023-06-01/customIpPrefix.json
  - Microsoft.Network/stable/2023-06-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2023-06-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2023-06-01/dscpConfiguration.json
  - Microsoft.Network/stable/2023-06-01/endpointService.json
  - Microsoft.Network/stable/2023-06-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2023-06-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2023-06-01/expressRoutePort.json
  - Microsoft.Network/stable/2023-06-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2023-06-01/firewallPolicy.json
  - Microsoft.Network/stable/2023-06-01/ipAllocation.json
  - Microsoft.Network/stable/2023-06-01/ipGroups.json
  - Microsoft.Network/stable/2023-06-01/loadBalancer.json
  - Microsoft.Network/stable/2023-06-01/natGateway.json
  - Microsoft.Network/stable/2023-06-01/network.json
  - Microsoft.Network/stable/2023-06-01/networkInterface.json
  - Microsoft.Network/stable/2023-06-01/networkManager.json
  - Microsoft.Network/stable/2023-06-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2023-06-01/networkManagerConnection.json
  - Microsoft.Network/stable/2023-06-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2023-06-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2023-06-01/networkManagerGroup.json
  - Microsoft.Network/stable/2023-06-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2023-06-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2023-06-01/networkProfile.json
  - Microsoft.Network/stable/2023-06-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2023-06-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2023-06-01/networkWatcher.json
  - Microsoft.Network/stable/2023-06-01/operation.json
  - Microsoft.Network/stable/2023-06-01/privateEndpoint.json
  - Microsoft.Network/stable/2023-06-01/privateLinkService.json
  - Microsoft.Network/stable/2023-06-01/publicIpAddress.json
  - Microsoft.Network/stable/2023-06-01/publicIpPrefix.json
  - Microsoft.Network/stable/2023-06-01/routeFilter.json
  - Microsoft.Network/stable/2023-06-01/routeTable.json
  - Microsoft.Network/stable/2023-06-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2023-06-01/serviceCommunity.json
  - Microsoft.Network/stable/2023-06-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2023-06-01/serviceTags.json
  - Microsoft.Network/stable/2023-06-01/usage.json
  - Microsoft.Network/stable/2023-06-01/virtualNetwork.json
  - Microsoft.Network/stable/2023-06-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2023-06-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2023-06-01/virtualRouter.json
  - Microsoft.Network/stable/2023-06-01/virtualWan.json
  - Microsoft.Network/stable/2023-06-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2023-06-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2023-06-01/webapplicationfirewall.json
```

### Tag: package-2023-05

These settings apply only when `--tag=package-2023-05` is specified on the command line.

``` yaml $(tag) == 'package-2023-05'
input-file:
  - Microsoft.Network/stable/2023-05-01/applicationGateway.json
  - Microsoft.Network/stable/2023-05-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2023-05-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2023-05-01/availableDelegations.json
  - Microsoft.Network/stable/2023-05-01/availableServiceAliases.json
  - Microsoft.Network/stable/2023-05-01/azureFirewall.json
  - Microsoft.Network/stable/2023-05-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2023-05-01/azureWebCategory.json
  - Microsoft.Network/stable/2023-05-01/bastionHost.json
  - Microsoft.Network/stable/2023-05-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2023-05-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2023-05-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2023-05-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2023-05-01/customIpPrefix.json
  - Microsoft.Network/stable/2023-05-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2023-05-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2023-05-01/dscpConfiguration.json
  - Microsoft.Network/stable/2023-05-01/endpointService.json
  - Microsoft.Network/stable/2023-05-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2023-05-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2023-05-01/expressRoutePort.json
  - Microsoft.Network/stable/2023-05-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2023-05-01/firewallPolicy.json
  - Microsoft.Network/stable/2023-05-01/ipAllocation.json
  - Microsoft.Network/stable/2023-05-01/ipGroups.json
  - Microsoft.Network/stable/2023-05-01/loadBalancer.json
  - Microsoft.Network/stable/2023-05-01/natGateway.json
  - Microsoft.Network/stable/2023-05-01/network.json
  - Microsoft.Network/stable/2023-05-01/networkInterface.json
  - Microsoft.Network/stable/2023-05-01/networkManager.json
  - Microsoft.Network/stable/2023-05-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2023-05-01/networkManagerConnection.json
  - Microsoft.Network/stable/2023-05-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2023-05-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2023-05-01/networkManagerGroup.json
  - Microsoft.Network/stable/2023-05-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2023-05-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2023-05-01/networkProfile.json
  - Microsoft.Network/stable/2023-05-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2023-05-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2023-05-01/networkWatcher.json
  - Microsoft.Network/stable/2023-05-01/operation.json
  - Microsoft.Network/stable/2023-05-01/privateEndpoint.json
  - Microsoft.Network/stable/2023-05-01/privateLinkService.json
  - Microsoft.Network/stable/2023-05-01/publicIpAddress.json
  - Microsoft.Network/stable/2023-05-01/publicIpPrefix.json
  - Microsoft.Network/stable/2023-05-01/routeFilter.json
  - Microsoft.Network/stable/2023-05-01/routeTable.json
  - Microsoft.Network/stable/2023-05-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2023-05-01/serviceCommunity.json
  - Microsoft.Network/stable/2023-05-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2023-05-01/serviceTags.json
  - Microsoft.Network/stable/2023-05-01/usage.json
  - Microsoft.Network/stable/2023-05-01/virtualNetwork.json
  - Microsoft.Network/stable/2023-05-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2023-05-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2023-05-01/virtualRouter.json
  - Microsoft.Network/stable/2023-05-01/virtualWan.json
  - Microsoft.Network/stable/2023-05-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2023-05-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2023-05-01/webapplicationfirewall.json
```

### Tag: package-2023-03-preview

These settings apply only when `--tag=package-2023-03-preview` is specified on the command line.

```yaml $(tag) == 'package-2023-03-preview'
input-file:
  - Microsoft.Network/preview/2023-03-01-preview/network.json
  - Microsoft.Network/preview/2023-03-01-preview/networkManagerRoutingConfiguration.json
  - Microsoft.Network/stable/2023-04-01/applicationGateway.json
  - Microsoft.Network/stable/2023-04-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2023-04-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2023-04-01/availableDelegations.json
  - Microsoft.Network/stable/2023-04-01/availableServiceAliases.json
  - Microsoft.Network/stable/2023-04-01/azureFirewall.json
  - Microsoft.Network/stable/2023-04-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2023-04-01/azureWebCategory.json
  - Microsoft.Network/stable/2023-04-01/bastionHost.json
  - Microsoft.Network/stable/2023-04-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2023-04-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2023-04-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2023-04-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2023-04-01/customIpPrefix.json
  - Microsoft.Network/stable/2023-04-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2023-04-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2023-04-01/dscpConfiguration.json
  - Microsoft.Network/stable/2023-04-01/endpointService.json
  - Microsoft.Network/stable/2023-04-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2023-04-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2023-04-01/expressRoutePort.json
  - Microsoft.Network/stable/2023-04-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2023-04-01/firewallPolicy.json
  - Microsoft.Network/stable/2023-04-01/ipAllocation.json
  - Microsoft.Network/stable/2023-04-01/ipGroups.json
  - Microsoft.Network/stable/2023-04-01/loadBalancer.json
  - Microsoft.Network/stable/2023-04-01/natGateway.json
  - Microsoft.Network/stable/2023-04-01/networkInterface.json
  - Microsoft.Network/stable/2023-04-01/networkManager.json
  - Microsoft.Network/stable/2023-04-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2023-04-01/networkManagerConnection.json
  - Microsoft.Network/stable/2023-04-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2023-04-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2023-04-01/networkManagerGroup.json
  - Microsoft.Network/stable/2023-04-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2023-04-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2023-04-01/networkProfile.json
  - Microsoft.Network/stable/2023-04-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2023-04-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2023-04-01/networkWatcher.json
  - Microsoft.Network/stable/2023-04-01/operation.json
  - Microsoft.Network/stable/2023-04-01/privateEndpoint.json
  - Microsoft.Network/stable/2023-04-01/privateLinkService.json
  - Microsoft.Network/stable/2023-04-01/publicIpAddress.json
  - Microsoft.Network/stable/2023-04-01/publicIpPrefix.json
  - Microsoft.Network/stable/2023-04-01/routeFilter.json
  - Microsoft.Network/stable/2023-04-01/routeTable.json
  - Microsoft.Network/stable/2023-04-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2023-04-01/serviceCommunity.json
  - Microsoft.Network/stable/2023-04-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2023-04-01/serviceTags.json
  - Microsoft.Network/stable/2023-04-01/usage.json
  - Microsoft.Network/stable/2023-04-01/virtualNetwork.json
  - Microsoft.Network/stable/2023-04-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2023-04-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2023-04-01/virtualRouter.json
  - Microsoft.Network/stable/2023-04-01/virtualWan.json
  - Microsoft.Network/stable/2023-04-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2023-04-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2023-04-01/webapplicationfirewall.json
```

### Tag: package-2023-04

These settings apply only when `--tag=package-2023-04` is specified on the command line.

``` yaml $(tag) == 'package-2023-04'
input-file:
  - Microsoft.Network/stable/2023-04-01/applicationGateway.json
  - Microsoft.Network/stable/2023-04-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2023-04-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2023-04-01/availableDelegations.json
  - Microsoft.Network/stable/2023-04-01/availableServiceAliases.json
  - Microsoft.Network/stable/2023-04-01/azureFirewall.json
  - Microsoft.Network/stable/2023-04-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2023-04-01/azureWebCategory.json
  - Microsoft.Network/stable/2023-04-01/bastionHost.json
  - Microsoft.Network/stable/2023-04-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2023-04-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2023-04-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2023-04-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2023-04-01/customIpPrefix.json
  - Microsoft.Network/stable/2023-04-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2023-04-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2023-04-01/dscpConfiguration.json
  - Microsoft.Network/stable/2023-04-01/endpointService.json
  - Microsoft.Network/stable/2023-04-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2023-04-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2023-04-01/expressRoutePort.json
  - Microsoft.Network/stable/2023-04-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2023-04-01/firewallPolicy.json
  - Microsoft.Network/stable/2023-04-01/ipAllocation.json
  - Microsoft.Network/stable/2023-04-01/ipGroups.json
  - Microsoft.Network/stable/2023-04-01/loadBalancer.json
  - Microsoft.Network/stable/2023-04-01/natGateway.json
  - Microsoft.Network/stable/2023-04-01/network.json
  - Microsoft.Network/stable/2023-04-01/networkInterface.json
  - Microsoft.Network/stable/2023-04-01/networkManager.json
  - Microsoft.Network/stable/2023-04-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2023-04-01/networkManagerConnection.json
  - Microsoft.Network/stable/2023-04-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2023-04-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2023-04-01/networkManagerGroup.json
  - Microsoft.Network/stable/2023-04-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2023-04-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2023-04-01/networkProfile.json
  - Microsoft.Network/stable/2023-04-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2023-04-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2023-04-01/networkWatcher.json
  - Microsoft.Network/stable/2023-04-01/operation.json
  - Microsoft.Network/stable/2023-04-01/privateEndpoint.json
  - Microsoft.Network/stable/2023-04-01/privateLinkService.json
  - Microsoft.Network/stable/2023-04-01/publicIpAddress.json
  - Microsoft.Network/stable/2023-04-01/publicIpPrefix.json
  - Microsoft.Network/stable/2023-04-01/routeFilter.json
  - Microsoft.Network/stable/2023-04-01/routeTable.json
  - Microsoft.Network/stable/2023-04-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2023-04-01/serviceCommunity.json
  - Microsoft.Network/stable/2023-04-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2023-04-01/serviceTags.json
  - Microsoft.Network/stable/2023-04-01/usage.json
  - Microsoft.Network/stable/2023-04-01/virtualNetwork.json
  - Microsoft.Network/stable/2023-04-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2023-04-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2023-04-01/virtualRouter.json
  - Microsoft.Network/stable/2023-04-01/virtualWan.json
  - Microsoft.Network/stable/2023-04-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2023-04-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2023-04-01/webapplicationfirewall.json
```

### Tag: package-2023-02

These settings apply only when `--tag=package-2023-02` is specified on the command line.

``` yaml $(tag) == 'package-2023-02'
input-file:
  - Microsoft.Network/stable/2023-02-01/applicationGateway.json
  - Microsoft.Network/stable/2023-02-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2023-02-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2023-02-01/availableDelegations.json
  - Microsoft.Network/stable/2023-02-01/availableServiceAliases.json
  - Microsoft.Network/stable/2023-02-01/azureFirewall.json
  - Microsoft.Network/stable/2023-02-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2023-02-01/azureWebCategory.json
  - Microsoft.Network/stable/2023-02-01/bastionHost.json
  - Microsoft.Network/stable/2023-02-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2023-02-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2023-02-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2023-02-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2023-02-01/customIpPrefix.json
  - Microsoft.Network/stable/2023-02-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2023-02-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2023-02-01/dscpConfiguration.json
  - Microsoft.Network/stable/2023-02-01/endpointService.json
  - Microsoft.Network/stable/2023-02-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2023-02-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2023-02-01/expressRoutePort.json
  - Microsoft.Network/stable/2023-02-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2023-02-01/firewallPolicy.json
  - Microsoft.Network/stable/2023-02-01/ipAllocation.json
  - Microsoft.Network/stable/2023-02-01/ipGroups.json
  - Microsoft.Network/stable/2023-02-01/loadBalancer.json
  - Microsoft.Network/stable/2023-02-01/natGateway.json
  - Microsoft.Network/stable/2023-02-01/network.json
  - Microsoft.Network/stable/2023-02-01/networkInterface.json
  - Microsoft.Network/stable/2023-02-01/networkManager.json
  - Microsoft.Network/stable/2023-02-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2023-02-01/networkManagerConnection.json
  - Microsoft.Network/stable/2023-02-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2023-02-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2023-02-01/networkManagerGroup.json
  - Microsoft.Network/stable/2023-02-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2023-02-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2023-02-01/networkProfile.json
  - Microsoft.Network/stable/2023-02-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2023-02-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2023-02-01/networkWatcher.json
  - Microsoft.Network/stable/2023-02-01/operation.json
  - Microsoft.Network/stable/2023-02-01/privateEndpoint.json
  - Microsoft.Network/stable/2023-02-01/privateLinkService.json
  - Microsoft.Network/stable/2023-02-01/publicIpAddress.json
  - Microsoft.Network/stable/2023-02-01/publicIpPrefix.json
  - Microsoft.Network/stable/2023-02-01/routeFilter.json
  - Microsoft.Network/stable/2023-02-01/routeTable.json
  - Microsoft.Network/stable/2023-02-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2023-02-01/serviceCommunity.json
  - Microsoft.Network/stable/2023-02-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2023-02-01/serviceTags.json
  - Microsoft.Network/stable/2023-02-01/usage.json
  - Microsoft.Network/stable/2023-02-01/virtualNetwork.json
  - Microsoft.Network/stable/2023-02-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2023-02-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2023-02-01/virtualRouter.json
  - Microsoft.Network/stable/2023-02-01/virtualWan.json
  - Microsoft.Network/stable/2023-02-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2023-02-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2023-02-01/webapplicationfirewall.json
```

### Tag: package-2022-06-preview

These settings apply only when `--tag=package-2022-06-preview` is specified on the command line.

``` yaml $(tag) == 'package-2022-06-preview'
input-file:
  - Microsoft.Network/preview/2022-06-01-preview/network.json
  - Microsoft.Network/preview/2022-06-01-preview/networkManagerGroupMembership.json
  - Microsoft.Network/stable/2022-07-01/applicationGateway.json
  - Microsoft.Network/stable/2022-07-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2022-07-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2022-07-01/availableDelegations.json
  - Microsoft.Network/stable/2022-07-01/availableServiceAliases.json
  - Microsoft.Network/stable/2022-07-01/azureFirewall.json
  - Microsoft.Network/stable/2022-07-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2022-07-01/azureWebCategory.json
  - Microsoft.Network/stable/2022-07-01/bastionHost.json
  - Microsoft.Network/stable/2022-07-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2022-07-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2022-07-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2022-07-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2022-07-01/customIpPrefix.json
  - Microsoft.Network/stable/2022-07-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2022-07-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2022-07-01/dscpConfiguration.json
  - Microsoft.Network/stable/2022-07-01/endpointService.json
  - Microsoft.Network/stable/2022-07-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2022-07-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2022-07-01/expressRoutePort.json
  - Microsoft.Network/stable/2022-07-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2022-07-01/firewallPolicy.json
  - Microsoft.Network/stable/2022-07-01/ipAllocation.json
  - Microsoft.Network/stable/2022-07-01/ipGroups.json
  - Microsoft.Network/stable/2022-07-01/loadBalancer.json
  - Microsoft.Network/stable/2022-07-01/natGateway.json
  - Microsoft.Network/stable/2022-07-01/network.json
  - Microsoft.Network/stable/2022-07-01/networkInterface.json
  - Microsoft.Network/stable/2022-07-01/networkManager.json
  - Microsoft.Network/stable/2022-07-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2022-07-01/networkManagerConnection.json
  - Microsoft.Network/stable/2022-07-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2022-07-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2022-07-01/networkManagerGroup.json
  - Microsoft.Network/stable/2022-07-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2022-07-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2022-07-01/networkProfile.json
  - Microsoft.Network/stable/2022-07-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2022-07-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2022-07-01/networkWatcher.json
  - Microsoft.Network/stable/2022-07-01/operation.json
  - Microsoft.Network/stable/2022-07-01/privateEndpoint.json
  - Microsoft.Network/stable/2022-07-01/privateLinkService.json
  - Microsoft.Network/stable/2022-07-01/publicIpAddress.json
  - Microsoft.Network/stable/2022-07-01/publicIpPrefix.json
  - Microsoft.Network/stable/2022-07-01/routeFilter.json
  - Microsoft.Network/stable/2022-07-01/routeTable.json
  - Microsoft.Network/stable/2022-07-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2022-07-01/serviceCommunity.json
  - Microsoft.Network/stable/2022-07-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2022-07-01/serviceTags.json
  - Microsoft.Network/stable/2022-07-01/usage.json
  - Microsoft.Network/stable/2022-07-01/virtualNetwork.json
  - Microsoft.Network/stable/2022-07-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2022-07-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2022-07-01/virtualRouter.json
  - Microsoft.Network/stable/2022-07-01/virtualWan.json
  - Microsoft.Network/stable/2022-07-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2022-07-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2022-07-01/webapplicationfirewall.json
```

### Tag: package-2022-11

These settings apply only when `--tag=package-2022-11` is specified on the command line.

``` yaml $(tag) == 'package-2022-11'
input-file:
  - Microsoft.Network/stable/2022-11-01/applicationGateway.json
  - Microsoft.Network/stable/2022-11-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2022-11-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2022-11-01/availableDelegations.json
  - Microsoft.Network/stable/2022-11-01/availableServiceAliases.json
  - Microsoft.Network/stable/2022-11-01/azureFirewall.json
  - Microsoft.Network/stable/2022-11-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2022-11-01/azureWebCategory.json
  - Microsoft.Network/stable/2022-11-01/bastionHost.json
  - Microsoft.Network/stable/2022-11-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2022-11-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2022-11-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2022-11-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2022-11-01/customIpPrefix.json
  - Microsoft.Network/stable/2022-11-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2022-11-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2022-11-01/dscpConfiguration.json
  - Microsoft.Network/stable/2022-11-01/endpointService.json
  - Microsoft.Network/stable/2022-11-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2022-11-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2022-11-01/expressRoutePort.json
  - Microsoft.Network/stable/2022-11-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2022-11-01/firewallPolicy.json
  - Microsoft.Network/stable/2022-11-01/ipAllocation.json
  - Microsoft.Network/stable/2022-11-01/ipGroups.json
  - Microsoft.Network/stable/2022-11-01/loadBalancer.json
  - Microsoft.Network/stable/2022-11-01/natGateway.json
  - Microsoft.Network/stable/2022-11-01/network.json
  - Microsoft.Network/stable/2022-11-01/networkInterface.json
  - Microsoft.Network/stable/2022-11-01/networkManager.json
  - Microsoft.Network/stable/2022-11-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2022-11-01/networkManagerConnection.json
  - Microsoft.Network/stable/2022-11-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2022-11-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2022-11-01/networkManagerGroup.json
  - Microsoft.Network/stable/2022-11-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2022-11-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2022-11-01/networkProfile.json
  - Microsoft.Network/stable/2022-11-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2022-11-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2022-11-01/networkWatcher.json
  - Microsoft.Network/stable/2022-11-01/operation.json
  - Microsoft.Network/stable/2022-11-01/privateEndpoint.json
  - Microsoft.Network/stable/2022-11-01/privateLinkService.json
  - Microsoft.Network/stable/2022-11-01/publicIpAddress.json
  - Microsoft.Network/stable/2022-11-01/publicIpPrefix.json
  - Microsoft.Network/stable/2022-11-01/routeFilter.json
  - Microsoft.Network/stable/2022-11-01/routeTable.json
  - Microsoft.Network/stable/2022-11-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2022-11-01/serviceCommunity.json
  - Microsoft.Network/stable/2022-11-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2022-11-01/serviceTags.json
  - Microsoft.Network/stable/2022-11-01/usage.json
  - Microsoft.Network/stable/2022-11-01/virtualNetwork.json
  - Microsoft.Network/stable/2022-11-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2022-11-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2022-11-01/virtualRouter.json
  - Microsoft.Network/stable/2022-11-01/virtualWan.json
  - Microsoft.Network/stable/2022-11-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2022-11-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2022-11-01/webapplicationfirewall.json
```

### Tag: package-2022-09

These settings apply only when `--tag=package-2022-09` is specified on the command line.

``` yaml $(tag) == 'package-2022-09'
input-file:
  - Microsoft.Network/stable/2022-09-01/applicationGateway.json
  - Microsoft.Network/stable/2022-09-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2022-09-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2022-09-01/availableDelegations.json
  - Microsoft.Network/stable/2022-09-01/availableServiceAliases.json
  - Microsoft.Network/stable/2022-09-01/azureFirewall.json
  - Microsoft.Network/stable/2022-09-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2022-09-01/azureWebCategory.json
  - Microsoft.Network/stable/2022-09-01/bastionHost.json
  - Microsoft.Network/stable/2022-09-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2022-09-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2022-09-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2022-09-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2022-09-01/customIpPrefix.json
  - Microsoft.Network/stable/2022-09-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2022-09-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2022-09-01/dscpConfiguration.json
  - Microsoft.Network/stable/2022-09-01/endpointService.json
  - Microsoft.Network/stable/2022-09-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2022-09-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2022-09-01/expressRoutePort.json
  - Microsoft.Network/stable/2022-09-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2022-09-01/firewallPolicy.json
  - Microsoft.Network/stable/2022-09-01/ipAllocation.json
  - Microsoft.Network/stable/2022-09-01/ipGroups.json
  - Microsoft.Network/stable/2022-09-01/loadBalancer.json
  - Microsoft.Network/stable/2022-09-01/natGateway.json
  - Microsoft.Network/stable/2022-09-01/network.json
  - Microsoft.Network/stable/2022-09-01/networkInterface.json
  - Microsoft.Network/stable/2022-09-01/networkManager.json
  - Microsoft.Network/stable/2022-09-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2022-09-01/networkManagerConnection.json
  - Microsoft.Network/stable/2022-09-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2022-09-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2022-09-01/networkManagerGroup.json
  - Microsoft.Network/stable/2022-09-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2022-09-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2022-09-01/networkProfile.json
  - Microsoft.Network/stable/2022-09-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2022-09-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2022-09-01/networkWatcher.json
  - Microsoft.Network/stable/2022-09-01/operation.json
  - Microsoft.Network/stable/2022-09-01/privateEndpoint.json
  - Microsoft.Network/stable/2022-09-01/privateLinkService.json
  - Microsoft.Network/stable/2022-09-01/publicIpAddress.json
  - Microsoft.Network/stable/2022-09-01/publicIpPrefix.json
  - Microsoft.Network/stable/2022-09-01/routeFilter.json
  - Microsoft.Network/stable/2022-09-01/routeTable.json
  - Microsoft.Network/stable/2022-09-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2022-09-01/serviceCommunity.json
  - Microsoft.Network/stable/2022-09-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2022-09-01/serviceTags.json
  - Microsoft.Network/stable/2022-09-01/usage.json
  - Microsoft.Network/stable/2022-09-01/virtualNetwork.json
  - Microsoft.Network/stable/2022-09-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2022-09-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2022-09-01/virtualRouter.json
  - Microsoft.Network/stable/2022-09-01/virtualWan.json
  - Microsoft.Network/stable/2022-09-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2022-09-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2022-09-01/webapplicationfirewall.json
```

### Tag: package-2022-07

These settings apply only when `--tag=package-2022-07` is specified on the command line.

``` yaml $(tag) == 'package-2022-07'
input-file:
  - Microsoft.Network/stable/2022-07-01/applicationGateway.json
  - Microsoft.Network/stable/2022-07-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2022-07-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2022-07-01/availableDelegations.json
  - Microsoft.Network/stable/2022-07-01/availableServiceAliases.json
  - Microsoft.Network/stable/2022-07-01/azureFirewall.json
  - Microsoft.Network/stable/2022-07-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2022-07-01/azureWebCategory.json
  - Microsoft.Network/stable/2022-07-01/bastionHost.json
  - Microsoft.Network/stable/2022-07-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2022-07-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2022-07-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2022-07-01/cloudServiceSwap.json
  - Microsoft.Network/stable/2022-07-01/customIpPrefix.json
  - Microsoft.Network/stable/2022-07-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2022-07-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2022-07-01/dscpConfiguration.json
  - Microsoft.Network/stable/2022-07-01/endpointService.json
  - Microsoft.Network/stable/2022-07-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2022-07-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2022-07-01/expressRoutePort.json
  - Microsoft.Network/stable/2022-07-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2022-07-01/firewallPolicy.json
  - Microsoft.Network/stable/2022-07-01/ipAllocation.json
  - Microsoft.Network/stable/2022-07-01/ipGroups.json
  - Microsoft.Network/stable/2022-07-01/loadBalancer.json
  - Microsoft.Network/stable/2022-07-01/natGateway.json
  - Microsoft.Network/stable/2022-07-01/network.json
  - Microsoft.Network/stable/2022-07-01/networkInterface.json
  - Microsoft.Network/stable/2022-07-01/networkManager.json
  - Microsoft.Network/stable/2022-07-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2022-07-01/networkManagerConnection.json
  - Microsoft.Network/stable/2022-07-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2022-07-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2022-07-01/networkManagerGroup.json
  - Microsoft.Network/stable/2022-07-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2022-07-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2022-07-01/networkProfile.json
  - Microsoft.Network/stable/2022-07-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2022-07-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2022-07-01/networkWatcher.json
  - Microsoft.Network/stable/2022-07-01/operation.json
  - Microsoft.Network/stable/2022-07-01/privateEndpoint.json
  - Microsoft.Network/stable/2022-07-01/privateLinkService.json
  - Microsoft.Network/stable/2022-07-01/publicIpAddress.json
  - Microsoft.Network/stable/2022-07-01/publicIpPrefix.json
  - Microsoft.Network/stable/2022-07-01/routeFilter.json
  - Microsoft.Network/stable/2022-07-01/routeTable.json
  - Microsoft.Network/stable/2022-07-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2022-07-01/serviceCommunity.json
  - Microsoft.Network/stable/2022-07-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2022-07-01/serviceTags.json
  - Microsoft.Network/stable/2022-07-01/usage.json
  - Microsoft.Network/stable/2022-07-01/virtualNetwork.json
  - Microsoft.Network/stable/2022-07-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2022-07-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2022-07-01/virtualRouter.json
  - Microsoft.Network/stable/2022-07-01/virtualWan.json
  - Microsoft.Network/stable/2022-07-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2022-07-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2022-07-01/webapplicationfirewall.json
```

### Tag: package-2022-05

These settings apply only when `--tag=package-2022-05` is specified on the command line.

``` yaml $(tag) == 'package-2022-05'
input-file:
  - Microsoft.Network/stable/2022-05-01/applicationGateway.json
  - Microsoft.Network/stable/2022-05-01/applicationGatewayWafDynamicManifests.json
  - Microsoft.Network/stable/2022-05-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2022-05-01/availableDelegations.json
  - Microsoft.Network/stable/2022-05-01/availableServiceAliases.json
  - Microsoft.Network/stable/2022-05-01/azureFirewall.json
  - Microsoft.Network/stable/2022-05-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2022-05-01/azureWebCategory.json
  - Microsoft.Network/stable/2022-05-01/bastionHost.json
  - Microsoft.Network/stable/2022-05-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2022-05-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2022-05-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2022-05-01/customIpPrefix.json
  - Microsoft.Network/stable/2022-05-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2022-05-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2022-05-01/dscpConfiguration.json
  - Microsoft.Network/stable/2022-05-01/endpointService.json
  - Microsoft.Network/stable/2022-05-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2022-05-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2022-05-01/expressRoutePort.json
  - Microsoft.Network/stable/2022-05-01/expressRouteProviderPort.json
  - Microsoft.Network/stable/2022-05-01/firewallPolicy.json
  - Microsoft.Network/stable/2022-05-01/ipAllocation.json
  - Microsoft.Network/stable/2022-05-01/ipGroups.json
  - Microsoft.Network/stable/2022-05-01/loadBalancer.json
  - Microsoft.Network/stable/2022-05-01/natGateway.json
  - Microsoft.Network/stable/2022-05-01/network.json
  - Microsoft.Network/stable/2022-05-01/networkInterface.json
  - Microsoft.Network/stable/2022-05-01/networkManager.json
  - Microsoft.Network/stable/2022-05-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2022-05-01/networkManagerConnection.json
  - Microsoft.Network/stable/2022-05-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2022-05-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2022-05-01/networkManagerGroup.json
  - Microsoft.Network/stable/2022-05-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2022-05-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2022-05-01/networkProfile.json
  - Microsoft.Network/stable/2022-05-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2022-05-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2022-05-01/networkWatcher.json
  - Microsoft.Network/stable/2022-05-01/operation.json
  - Microsoft.Network/stable/2022-05-01/privateEndpoint.json
  - Microsoft.Network/stable/2022-05-01/privateLinkService.json
  - Microsoft.Network/stable/2022-05-01/publicIpAddress.json
  - Microsoft.Network/stable/2022-05-01/publicIpPrefix.json
  - Microsoft.Network/stable/2022-05-01/routeFilter.json
  - Microsoft.Network/stable/2022-05-01/routeTable.json
  - Microsoft.Network/stable/2022-05-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2022-05-01/serviceCommunity.json
  - Microsoft.Network/stable/2022-05-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2022-05-01/serviceTags.json
  - Microsoft.Network/stable/2022-05-01/usage.json
  - Microsoft.Network/stable/2022-05-01/virtualNetwork.json
  - Microsoft.Network/stable/2022-05-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2022-05-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2022-05-01/virtualRouter.json
  - Microsoft.Network/stable/2022-05-01/virtualWan.json
  - Microsoft.Network/stable/2022-05-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2022-05-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2022-05-01/webapplicationfirewall.json
  - Microsoft.Network/stable/2022-05-01/cloudServiceSwap.json
```

### Tag: package-2022-01

These settings apply only when `--tag=package-2022-01` is specified on the command line.

``` yaml $(tag) == 'package-2022-01'
input-file:
  - Microsoft.Network/stable/2022-01-01/applicationGateway.json
  - Microsoft.Network/stable/2022-01-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2022-01-01/availableDelegations.json
  - Microsoft.Network/stable/2022-01-01/availableServiceAliases.json
  - Microsoft.Network/stable/2022-01-01/azureFirewall.json
  - Microsoft.Network/stable/2022-01-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2022-01-01/azureWebCategory.json
  - Microsoft.Network/stable/2022-01-01/bastionHost.json
  - Microsoft.Network/stable/2022-01-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2022-01-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2022-01-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2022-01-01/customIpPrefix.json
  - Microsoft.Network/stable/2022-01-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2022-01-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2022-01-01/dscpConfiguration.json
  - Microsoft.Network/stable/2022-01-01/endpointService.json
  - Microsoft.Network/stable/2022-01-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2022-01-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2022-01-01/expressRoutePort.json
  - Microsoft.Network/stable/2022-01-01/firewallPolicy.json
  - Microsoft.Network/stable/2022-01-01/ipAllocation.json
  - Microsoft.Network/stable/2022-01-01/ipGroups.json
  - Microsoft.Network/stable/2022-01-01/loadBalancer.json
  - Microsoft.Network/stable/2022-01-01/natGateway.json
  - Microsoft.Network/stable/2022-01-01/network.json
  - Microsoft.Network/stable/2022-01-01/networkInterface.json
  - Microsoft.Network/stable/2022-01-01/networkManager.json
  - Microsoft.Network/stable/2022-01-01/networkManagerActiveConfiguration.json
  - Microsoft.Network/stable/2022-01-01/networkManagerConnection.json
  - Microsoft.Network/stable/2022-01-01/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/stable/2022-01-01/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/stable/2022-01-01/networkManagerGroup.json
  - Microsoft.Network/stable/2022-01-01/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2022-01-01/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/stable/2022-01-01/networkProfile.json
  - Microsoft.Network/stable/2022-01-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2022-01-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2022-01-01/networkWatcher.json
  - Microsoft.Network/stable/2022-01-01/operation.json
  - Microsoft.Network/stable/2022-01-01/privateEndpoint.json
  - Microsoft.Network/stable/2022-01-01/privateLinkService.json
  - Microsoft.Network/stable/2022-01-01/publicIpAddress.json
  - Microsoft.Network/stable/2022-01-01/publicIpPrefix.json
  - Microsoft.Network/stable/2022-01-01/routeFilter.json
  - Microsoft.Network/stable/2022-01-01/routeTable.json
  - Microsoft.Network/stable/2022-01-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2022-01-01/serviceCommunity.json
  - Microsoft.Network/stable/2022-01-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2022-01-01/serviceTags.json
  - Microsoft.Network/stable/2022-01-01/usage.json
  - Microsoft.Network/stable/2022-01-01/virtualNetwork.json
  - Microsoft.Network/stable/2022-01-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2022-01-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2022-01-01/virtualRouter.json
  - Microsoft.Network/stable/2022-01-01/virtualWan.json
  - Microsoft.Network/stable/2022-01-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2022-01-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2022-01-01/webapplicationfirewall.json
  - Microsoft.Network/stable/2022-01-01/expressRouteProviderPort.json
```

### Tag: package-2022-04-preview

These settings apply only when `--tag=2022-04-preview` is specified on the command line.

``` yaml $(tag) == 'package-2022-04-preview'
input-file:
  - Microsoft.Network/preview/2022-04-01-preview/network.json
  - Microsoft.Network/preview/2022-04-01-preview/networkManager.json
  - Microsoft.Network/preview/2022-04-01-preview/networkManagerActiveConfiguration.json
  - Microsoft.Network/preview/2022-04-01-preview/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/preview/2022-04-01-preview/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/preview/2022-04-01-preview/networkManagerGroup.json
  - Microsoft.Network/preview/2022-04-01-preview/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/preview/2022-04-01-preview/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/preview/2022-04-01-preview/networkManagerConnection.json
  - Microsoft.Network/preview/2022-04-01-preview/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2021-08-01/applicationGateway.json
  - Microsoft.Network/stable/2021-08-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2021-08-01/availableDelegations.json
  - Microsoft.Network/stable/2021-08-01/availableServiceAliases.json
  - Microsoft.Network/stable/2021-08-01/azureFirewall.json
  - Microsoft.Network/stable/2021-08-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2021-08-01/azureWebCategory.json
  - Microsoft.Network/stable/2021-08-01/bastionHost.json
  - Microsoft.Network/stable/2021-08-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2021-08-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2021-08-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2021-08-01/customIpPrefix.json
  - Microsoft.Network/stable/2021-08-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2021-08-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2021-08-01/dscpConfiguration.json
  - Microsoft.Network/stable/2021-08-01/endpointService.json
  - Microsoft.Network/stable/2021-08-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2021-08-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2021-08-01/expressRoutePort.json
  - Microsoft.Network/stable/2021-08-01/firewallPolicy.json
  - Microsoft.Network/stable/2021-08-01/ipAllocation.json
  - Microsoft.Network/stable/2021-08-01/ipGroups.json
  - Microsoft.Network/stable/2021-08-01/loadBalancer.json
  - Microsoft.Network/stable/2021-08-01/natGateway.json
  - Microsoft.Network/stable/2021-08-01/network.json
  - Microsoft.Network/stable/2021-08-01/networkInterface.json
  - Microsoft.Network/stable/2021-08-01/networkProfile.json
  - Microsoft.Network/stable/2021-08-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2021-08-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2021-08-01/networkWatcher.json
  - Microsoft.Network/stable/2021-08-01/operation.json
  - Microsoft.Network/stable/2021-08-01/privateEndpoint.json
  - Microsoft.Network/stable/2021-08-01/privateLinkService.json
  - Microsoft.Network/stable/2021-08-01/publicIpAddress.json
  - Microsoft.Network/stable/2021-08-01/publicIpPrefix.json
  - Microsoft.Network/stable/2021-08-01/routeFilter.json
  - Microsoft.Network/stable/2021-08-01/routeTable.json
  - Microsoft.Network/stable/2021-08-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2021-08-01/serviceCommunity.json
  - Microsoft.Network/stable/2021-08-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2021-08-01/serviceTags.json
  - Microsoft.Network/stable/2021-08-01/usage.json
  - Microsoft.Network/stable/2021-08-01/virtualNetwork.json
  - Microsoft.Network/stable/2021-08-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2021-08-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2021-08-01/virtualRouter.json
  - Microsoft.Network/stable/2021-08-01/virtualWan.json
  - Microsoft.Network/stable/2021-08-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2021-08-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2021-08-01/webapplicationfirewall.json
```

### Tag: package-2022-02-preview

These settings apply only when `--tag=2022-02-preview` is specified on the command line.

``` yaml $(tag) == 'package-2022-02-preview'
input-file:
  - Microsoft.Network/preview/2022-02-01-preview/network.json
  - Microsoft.Network/preview/2022-02-01-preview/networkManager.json
  - Microsoft.Network/preview/2022-02-01-preview/networkManagerActiveConfiguration.json
  - Microsoft.Network/preview/2022-02-01-preview/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/preview/2022-02-01-preview/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/preview/2022-02-01-preview/networkManagerGroup.json
  - Microsoft.Network/preview/2022-02-01-preview/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/preview/2022-02-01-preview/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/preview/2022-02-01-preview/networkManagerConnection.json
  - Microsoft.Network/preview/2022-02-01-preview/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2021-05-01/applicationGateway.json
  - Microsoft.Network/stable/2021-05-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2021-05-01/availableDelegations.json
  - Microsoft.Network/stable/2021-05-01/availableServiceAliases.json
  - Microsoft.Network/stable/2021-05-01/azureFirewall.json
  - Microsoft.Network/stable/2021-05-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2021-05-01/azureWebCategory.json
  - Microsoft.Network/stable/2021-05-01/bastionHost.json
  - Microsoft.Network/stable/2021-05-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2021-05-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2021-05-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2021-05-01/customIpPrefix.json
  - Microsoft.Network/stable/2021-05-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2021-05-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2021-05-01/dscpConfiguration.json
  - Microsoft.Network/stable/2021-05-01/endpointService.json
  - Microsoft.Network/stable/2021-05-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2021-05-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2021-05-01/expressRoutePort.json
  - Microsoft.Network/stable/2021-05-01/firewallPolicy.json
  - Microsoft.Network/stable/2021-05-01/ipAllocation.json
  - Microsoft.Network/stable/2021-05-01/ipGroups.json
  - Microsoft.Network/stable/2021-05-01/loadBalancer.json
  - Microsoft.Network/stable/2021-05-01/natGateway.json
  - Microsoft.Network/stable/2021-05-01/network.json
  - Microsoft.Network/stable/2021-05-01/networkInterface.json
  - Microsoft.Network/stable/2021-05-01/networkProfile.json
  - Microsoft.Network/stable/2021-05-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2021-05-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2021-05-01/networkWatcher.json
  - Microsoft.Network/stable/2021-05-01/operation.json
  - Microsoft.Network/stable/2021-05-01/privateEndpoint.json
  - Microsoft.Network/stable/2021-05-01/privateLinkService.json
  - Microsoft.Network/stable/2021-05-01/publicIpAddress.json
  - Microsoft.Network/stable/2021-05-01/publicIpPrefix.json
  - Microsoft.Network/stable/2021-05-01/routeFilter.json
  - Microsoft.Network/stable/2021-05-01/routeTable.json
  - Microsoft.Network/stable/2021-05-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2021-05-01/serviceCommunity.json
  - Microsoft.Network/stable/2021-05-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2021-05-01/serviceTags.json
  - Microsoft.Network/stable/2021-05-01/usage.json
  - Microsoft.Network/stable/2021-05-01/virtualNetwork.json
  - Microsoft.Network/stable/2021-05-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2021-05-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2021-05-01/virtualRouter.json
  - Microsoft.Network/stable/2021-05-01/virtualWan.json
  - Microsoft.Network/stable/2021-05-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2021-05-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2021-05-01/webapplicationfirewall.json
```

### Tag: package-2021-08

These settings apply only when `--tag=package-2021-08` is specified on the command line.

``` yaml $(tag) == 'package-2021-08'
input-file:
  - Microsoft.Network/stable/2021-08-01/applicationGateway.json
  - Microsoft.Network/stable/2021-08-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2021-08-01/availableDelegations.json
  - Microsoft.Network/stable/2021-08-01/availableServiceAliases.json
  - Microsoft.Network/stable/2021-08-01/azureFirewall.json
  - Microsoft.Network/stable/2021-08-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2021-08-01/azureWebCategory.json
  - Microsoft.Network/stable/2021-08-01/bastionHost.json
  - Microsoft.Network/stable/2021-08-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2021-08-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2021-08-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2021-08-01/customIpPrefix.json
  - Microsoft.Network/stable/2021-08-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2021-08-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2021-08-01/dscpConfiguration.json
  - Microsoft.Network/stable/2021-08-01/endpointService.json
  - Microsoft.Network/stable/2021-08-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2021-08-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2021-08-01/expressRoutePort.json
  - Microsoft.Network/stable/2021-08-01/firewallPolicy.json
  - Microsoft.Network/stable/2021-08-01/ipAllocation.json
  - Microsoft.Network/stable/2021-08-01/ipGroups.json
  - Microsoft.Network/stable/2021-08-01/loadBalancer.json
  - Microsoft.Network/stable/2021-08-01/natGateway.json
  - Microsoft.Network/stable/2021-08-01/network.json
  - Microsoft.Network/stable/2021-08-01/networkInterface.json
  - Microsoft.Network/stable/2021-08-01/networkProfile.json
  - Microsoft.Network/stable/2021-08-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2021-08-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2021-08-01/networkWatcher.json
  - Microsoft.Network/stable/2021-08-01/operation.json
  - Microsoft.Network/stable/2021-08-01/privateEndpoint.json
  - Microsoft.Network/stable/2021-08-01/privateLinkService.json
  - Microsoft.Network/stable/2021-08-01/publicIpAddress.json
  - Microsoft.Network/stable/2021-08-01/publicIpPrefix.json
  - Microsoft.Network/stable/2021-08-01/routeFilter.json
  - Microsoft.Network/stable/2021-08-01/routeTable.json
  - Microsoft.Network/stable/2021-08-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2021-08-01/serviceCommunity.json
  - Microsoft.Network/stable/2021-08-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2021-08-01/serviceTags.json
  - Microsoft.Network/stable/2021-08-01/usage.json
  - Microsoft.Network/stable/2021-08-01/virtualNetwork.json
  - Microsoft.Network/stable/2021-08-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2021-08-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2021-08-01/virtualRouter.json
  - Microsoft.Network/stable/2021-08-01/virtualWan.json
  - Microsoft.Network/stable/2021-08-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2021-08-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2021-08-01/webapplicationfirewall.json
```

### Tag: package-2021-05-preview

These settings apply only when `--tag=2021-05-preview` is specified on the command line.

``` yaml $(tag) == 'package-2021-05-preview'
input-file:
  - Microsoft.Network/preview/2021-05-01-preview/network.json
  - Microsoft.Network/preview/2021-05-01-preview/networkManager.json
  - Microsoft.Network/preview/2021-05-01-preview/networkManagerActiveConfiguration.json
  - Microsoft.Network/preview/2021-05-01-preview/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/preview/2021-05-01-preview/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/preview/2021-05-01-preview/networkManagerGroup.json
  - Microsoft.Network/preview/2021-05-01-preview/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/preview/2021-05-01-preview/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/preview/2021-05-01-preview/networkManagerConnection.json
  - Microsoft.Network/preview/2021-05-01-preview/networkManagerScopeConnection.json
  - Microsoft.Network/stable/2021-05-01/applicationGateway.json
  - Microsoft.Network/stable/2021-05-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2021-05-01/availableDelegations.json
  - Microsoft.Network/stable/2021-05-01/availableServiceAliases.json
  - Microsoft.Network/stable/2021-05-01/azureFirewall.json
  - Microsoft.Network/stable/2021-05-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2021-05-01/azureWebCategory.json
  - Microsoft.Network/stable/2021-05-01/bastionHost.json
  - Microsoft.Network/stable/2021-05-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2021-05-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2021-05-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2021-05-01/customIpPrefix.json
  - Microsoft.Network/stable/2021-05-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2021-05-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2021-05-01/dscpConfiguration.json
  - Microsoft.Network/stable/2021-05-01/endpointService.json
  - Microsoft.Network/stable/2021-05-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2021-05-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2021-05-01/expressRoutePort.json
  - Microsoft.Network/stable/2021-05-01/firewallPolicy.json
  - Microsoft.Network/stable/2021-05-01/ipAllocation.json
  - Microsoft.Network/stable/2021-05-01/ipGroups.json
  - Microsoft.Network/stable/2021-05-01/loadBalancer.json
  - Microsoft.Network/stable/2021-05-01/natGateway.json
  - Microsoft.Network/stable/2021-05-01/network.json
  - Microsoft.Network/stable/2021-05-01/networkInterface.json
  - Microsoft.Network/stable/2021-05-01/networkProfile.json
  - Microsoft.Network/stable/2021-05-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2021-05-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2021-05-01/networkWatcher.json
  - Microsoft.Network/stable/2021-05-01/operation.json
  - Microsoft.Network/stable/2021-05-01/privateEndpoint.json
  - Microsoft.Network/stable/2021-05-01/privateLinkService.json
  - Microsoft.Network/stable/2021-05-01/publicIpAddress.json
  - Microsoft.Network/stable/2021-05-01/publicIpPrefix.json
  - Microsoft.Network/stable/2021-05-01/routeFilter.json
  - Microsoft.Network/stable/2021-05-01/routeTable.json
  - Microsoft.Network/stable/2021-05-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2021-05-01/serviceCommunity.json
  - Microsoft.Network/stable/2021-05-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2021-05-01/serviceTags.json
  - Microsoft.Network/stable/2021-05-01/usage.json
  - Microsoft.Network/stable/2021-05-01/virtualNetwork.json
  - Microsoft.Network/stable/2021-05-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2021-05-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2021-05-01/virtualRouter.json
  - Microsoft.Network/stable/2021-05-01/virtualWan.json
  - Microsoft.Network/stable/2021-05-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2021-05-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2021-05-01/webapplicationfirewall.json
```

### Tag: package-2021-05

These settings apply only when `--tag=package-2021-05` is specified on the command line.

``` yaml $(tag) == 'package-2021-05'
input-file:
  - Microsoft.Network/stable/2021-05-01/applicationGateway.json
  - Microsoft.Network/stable/2021-05-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2021-05-01/availableDelegations.json
  - Microsoft.Network/stable/2021-05-01/availableServiceAliases.json
  - Microsoft.Network/stable/2021-05-01/azureFirewall.json
  - Microsoft.Network/stable/2021-05-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2021-05-01/azureWebCategory.json
  - Microsoft.Network/stable/2021-05-01/bastionHost.json
  - Microsoft.Network/stable/2021-05-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2021-05-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2021-05-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2021-05-01/customIpPrefix.json
  - Microsoft.Network/stable/2021-05-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2021-05-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2021-05-01/dscpConfiguration.json
  - Microsoft.Network/stable/2021-05-01/endpointService.json
  - Microsoft.Network/stable/2021-05-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2021-05-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2021-05-01/expressRoutePort.json
  - Microsoft.Network/stable/2021-05-01/firewallPolicy.json
  - Microsoft.Network/stable/2021-05-01/ipAllocation.json
  - Microsoft.Network/stable/2021-05-01/ipGroups.json
  - Microsoft.Network/stable/2021-05-01/loadBalancer.json
  - Microsoft.Network/stable/2021-05-01/natGateway.json
  - Microsoft.Network/stable/2021-05-01/network.json
  - Microsoft.Network/stable/2021-05-01/networkInterface.json
  - Microsoft.Network/stable/2021-05-01/networkProfile.json
  - Microsoft.Network/stable/2021-05-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2021-05-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2021-05-01/networkWatcher.json
  - Microsoft.Network/stable/2021-05-01/operation.json
  - Microsoft.Network/stable/2021-05-01/privateEndpoint.json
  - Microsoft.Network/stable/2021-05-01/privateLinkService.json
  - Microsoft.Network/stable/2021-05-01/publicIpAddress.json
  - Microsoft.Network/stable/2021-05-01/publicIpPrefix.json
  - Microsoft.Network/stable/2021-05-01/routeFilter.json
  - Microsoft.Network/stable/2021-05-01/routeTable.json
  - Microsoft.Network/stable/2021-05-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2021-05-01/serviceCommunity.json
  - Microsoft.Network/stable/2021-05-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2021-05-01/serviceTags.json
  - Microsoft.Network/stable/2021-05-01/usage.json
  - Microsoft.Network/stable/2021-05-01/virtualNetwork.json
  - Microsoft.Network/stable/2021-05-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2021-05-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2021-05-01/virtualRouter.json
  - Microsoft.Network/stable/2021-05-01/virtualWan.json
  - Microsoft.Network/stable/2021-05-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2021-05-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2021-05-01/webapplicationfirewall.json
```

### Tag: package-2021-03

These settings apply only when `--tag=package-2021-03` is specified on the command line.

``` yaml $(tag) == 'package-2021-03'
input-file:
  - Microsoft.Network/stable/2021-03-01/applicationGateway.json
  - Microsoft.Network/stable/2021-03-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2021-03-01/availableDelegations.json
  - Microsoft.Network/stable/2021-03-01/availableServiceAliases.json
  - Microsoft.Network/stable/2021-03-01/azureFirewall.json
  - Microsoft.Network/stable/2021-03-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2021-03-01/azureWebCategory.json
  - Microsoft.Network/stable/2021-03-01/bastionHost.json
  - Microsoft.Network/stable/2021-03-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2021-03-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2021-03-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2021-03-01/customIpPrefix.json
  - Microsoft.Network/stable/2021-03-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2021-03-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2021-03-01/dscpConfiguration.json
  - Microsoft.Network/stable/2021-03-01/endpointService.json
  - Microsoft.Network/stable/2021-03-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2021-03-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2021-03-01/expressRoutePort.json
  - Microsoft.Network/stable/2021-03-01/firewallPolicy.json
  - Microsoft.Network/stable/2021-03-01/ipAllocation.json
  - Microsoft.Network/stable/2021-03-01/ipGroups.json
  - Microsoft.Network/stable/2021-03-01/loadBalancer.json
  - Microsoft.Network/stable/2021-03-01/natGateway.json
  - Microsoft.Network/stable/2021-03-01/network.json
  - Microsoft.Network/stable/2021-03-01/networkInterface.json
  - Microsoft.Network/stable/2021-03-01/networkProfile.json
  - Microsoft.Network/stable/2021-03-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2021-03-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2021-03-01/networkWatcher.json
  - Microsoft.Network/stable/2021-03-01/operation.json
  - Microsoft.Network/stable/2021-03-01/privateEndpoint.json
  - Microsoft.Network/stable/2021-03-01/privateLinkService.json
  - Microsoft.Network/stable/2021-03-01/publicIpAddress.json
  - Microsoft.Network/stable/2021-03-01/publicIpPrefix.json
  - Microsoft.Network/stable/2021-03-01/routeFilter.json
  - Microsoft.Network/stable/2021-03-01/routeTable.json
  - Microsoft.Network/stable/2021-03-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2021-03-01/serviceCommunity.json
  - Microsoft.Network/stable/2021-03-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2021-03-01/serviceTags.json
  - Microsoft.Network/stable/2021-03-01/usage.json
  - Microsoft.Network/stable/2021-03-01/virtualNetwork.json
  - Microsoft.Network/stable/2021-03-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2021-03-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2021-03-01/virtualRouter.json
  - Microsoft.Network/stable/2021-03-01/virtualWan.json
  - Microsoft.Network/stable/2021-03-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2021-03-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2021-03-01/webapplicationfirewall.json
```

### Tag: package-2021-02

These settings apply only when `--tag=package-2021-02` is specified on the command line.

``` yaml $(tag) == 'package-2021-02'
input-file:
  - Microsoft.Network/stable/2021-02-01/applicationGateway.json
  - Microsoft.Network/stable/2021-02-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2021-02-01/availableDelegations.json
  - Microsoft.Network/stable/2021-02-01/availableServiceAliases.json
  - Microsoft.Network/stable/2021-02-01/azureFirewall.json
  - Microsoft.Network/stable/2021-02-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2021-02-01/azureWebCategory.json
  - Microsoft.Network/stable/2021-02-01/bastionHost.json
  - Microsoft.Network/stable/2021-02-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2021-02-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2021-02-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2021-02-01/customIpPrefix.json
  - Microsoft.Network/stable/2021-02-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2021-02-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2021-02-01/dscpConfiguration.json
  - Microsoft.Network/stable/2021-02-01/endpointService.json
  - Microsoft.Network/stable/2021-02-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2021-02-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2021-02-01/expressRoutePort.json
  - Microsoft.Network/stable/2021-02-01/firewallPolicy.json
  - Microsoft.Network/stable/2021-02-01/ipAllocation.json
  - Microsoft.Network/stable/2021-02-01/ipGroups.json
  - Microsoft.Network/stable/2021-02-01/loadBalancer.json
  - Microsoft.Network/stable/2021-02-01/natGateway.json
  - Microsoft.Network/stable/2021-02-01/network.json
  - Microsoft.Network/stable/2021-02-01/networkInterface.json
  - Microsoft.Network/stable/2021-02-01/networkProfile.json
  - Microsoft.Network/stable/2021-02-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2021-02-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2021-02-01/networkWatcher.json
  - Microsoft.Network/stable/2021-02-01/operation.json
  - Microsoft.Network/stable/2021-02-01/privateEndpoint.json
  - Microsoft.Network/stable/2021-02-01/privateLinkService.json
  - Microsoft.Network/stable/2021-02-01/publicIpAddress.json
  - Microsoft.Network/stable/2021-02-01/publicIpPrefix.json
  - Microsoft.Network/stable/2021-02-01/routeFilter.json
  - Microsoft.Network/stable/2021-02-01/routeTable.json
  - Microsoft.Network/stable/2021-02-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2021-02-01/serviceCommunity.json
  - Microsoft.Network/stable/2021-02-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2021-02-01/serviceTags.json
  - Microsoft.Network/stable/2021-02-01/usage.json
  - Microsoft.Network/stable/2021-02-01/virtualNetwork.json
  - Microsoft.Network/stable/2021-02-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2021-02-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2021-02-01/virtualRouter.json
  - Microsoft.Network/stable/2021-02-01/virtualWan.json
  - Microsoft.Network/stable/2021-02-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2021-02-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2021-02-01/webapplicationfirewall.json
```

### Tag: package-2020-11

These settings apply only when `--tag=package-2020-11` is specified on the command line.

``` yaml $(tag) == 'package-2020-11'
input-file:
  - Microsoft.Network/stable/2020-11-01/applicationGateway.json
  - Microsoft.Network/stable/2020-11-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2020-11-01/availableDelegations.json
  - Microsoft.Network/stable/2020-11-01/availableServiceAliases.json
  - Microsoft.Network/stable/2020-11-01/azureFirewall.json
  - Microsoft.Network/stable/2020-11-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2020-11-01/azureWebCategory.json
  - Microsoft.Network/stable/2020-11-01/bastionHost.json
  - Microsoft.Network/stable/2020-11-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2020-11-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2020-11-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2020-11-01/customIpPrefix.json
  - Microsoft.Network/stable/2020-11-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2020-11-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2020-11-01/dscpConfiguration.json
  - Microsoft.Network/stable/2020-11-01/endpointService.json
  - Microsoft.Network/stable/2020-11-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2020-11-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2020-11-01/expressRoutePort.json
  - Microsoft.Network/stable/2020-11-01/firewallPolicy.json
  - Microsoft.Network/stable/2020-11-01/ipAllocation.json
  - Microsoft.Network/stable/2020-11-01/ipGroups.json
  - Microsoft.Network/stable/2020-11-01/loadBalancer.json
  - Microsoft.Network/stable/2020-11-01/natGateway.json
  - Microsoft.Network/stable/2020-11-01/network.json
  - Microsoft.Network/stable/2020-11-01/networkInterface.json
  - Microsoft.Network/stable/2020-11-01/networkProfile.json
  - Microsoft.Network/stable/2020-11-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2020-11-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2020-11-01/networkWatcher.json
  - Microsoft.Network/stable/2020-11-01/operation.json
  - Microsoft.Network/stable/2020-11-01/privateEndpoint.json
  - Microsoft.Network/stable/2020-11-01/privateLinkService.json
  - Microsoft.Network/stable/2020-11-01/publicIpAddress.json
  - Microsoft.Network/stable/2020-11-01/publicIpPrefix.json
  - Microsoft.Network/stable/2020-11-01/routeFilter.json
  - Microsoft.Network/stable/2020-11-01/routeTable.json
  - Microsoft.Network/stable/2020-11-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2020-11-01/serviceCommunity.json
  - Microsoft.Network/stable/2020-11-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2020-11-01/serviceTags.json
  - Microsoft.Network/stable/2020-11-01/usage.json
  - Microsoft.Network/stable/2020-11-01/virtualNetwork.json
  - Microsoft.Network/stable/2020-11-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2020-11-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2020-11-01/virtualRouter.json
  - Microsoft.Network/stable/2020-11-01/virtualWan.json
  - Microsoft.Network/stable/2020-11-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2020-11-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2020-11-01/webapplicationfirewall.json

```

### Tag: package-2021-02-preview-only

These settings apply only when `--tag=2021-02-preview-only` is specified on the command line.

``` yaml $(tag) == 'package-2021-02-preview-only'
input-file:
  - Microsoft.Network/preview/2021-02-01-preview/networkManager.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerActiveConfiguration.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerGroup.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/preview/2021-02-01-preview/networkSecurityPerimeter.json
```

### Tag: package-2021-02-preview

These settings apply only when `--tag=2021-02-preview` is specified on the command line.

``` yaml $(tag) == 'package-2021-02-preview'
input-file:
  - Microsoft.Network/preview/2021-02-01-preview/network.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManager.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerActiveConfiguration.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerConnectivityConfiguration.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerEffectiveConfiguration.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerGroup.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerSecurityUserConfiguration.json
  - Microsoft.Network/preview/2021-02-01-preview/networkManagerSecurityAdminConfiguration.json
  - Microsoft.Network/preview/2021-02-01-preview/networkSecurityPerimeter.json
  - Microsoft.Network/stable/2021-03-01/applicationGateway.json
  - Microsoft.Network/stable/2021-03-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2021-03-01/availableDelegations.json
  - Microsoft.Network/stable/2021-03-01/availableServiceAliases.json
  - Microsoft.Network/stable/2021-03-01/azureFirewall.json
  - Microsoft.Network/stable/2021-03-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2021-03-01/azureWebCategory.json
  - Microsoft.Network/stable/2021-03-01/bastionHost.json
  - Microsoft.Network/stable/2021-03-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2021-03-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2021-03-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2021-03-01/customIpPrefix.json
  - Microsoft.Network/stable/2021-03-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2021-03-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2021-03-01/dscpConfiguration.json
  - Microsoft.Network/stable/2021-03-01/endpointService.json
  - Microsoft.Network/stable/2021-03-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2021-03-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2021-03-01/expressRoutePort.json
  - Microsoft.Network/stable/2021-03-01/firewallPolicy.json
  - Microsoft.Network/stable/2021-03-01/ipAllocation.json
  - Microsoft.Network/stable/2021-03-01/ipGroups.json
  - Microsoft.Network/stable/2021-03-01/loadBalancer.json
  - Microsoft.Network/stable/2021-03-01/natGateway.json
  - Microsoft.Network/stable/2021-03-01/networkInterface.json
  - Microsoft.Network/stable/2021-03-01/networkProfile.json
  - Microsoft.Network/stable/2021-03-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2021-03-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2021-03-01/networkWatcher.json
  - Microsoft.Network/stable/2021-03-01/operation.json
  - Microsoft.Network/stable/2021-03-01/privateEndpoint.json
  - Microsoft.Network/stable/2021-03-01/privateLinkService.json
  - Microsoft.Network/stable/2021-03-01/publicIpAddress.json
  - Microsoft.Network/stable/2021-03-01/publicIpPrefix.json
  - Microsoft.Network/stable/2021-03-01/routeFilter.json
  - Microsoft.Network/stable/2021-03-01/routeTable.json
  - Microsoft.Network/stable/2021-03-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2021-03-01/serviceCommunity.json
  - Microsoft.Network/stable/2021-03-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2021-03-01/serviceTags.json
  - Microsoft.Network/stable/2021-03-01/usage.json
  - Microsoft.Network/stable/2021-03-01/virtualNetwork.json
  - Microsoft.Network/stable/2021-03-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2021-03-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2021-03-01/virtualRouter.json
  - Microsoft.Network/stable/2021-03-01/virtualWan.json
  - Microsoft.Network/stable/2021-03-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2021-03-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2021-03-01/webapplicationfirewall.json
```

### Tag: package-2021-03-preview

These settings apply only when `--tag=2021-03-preview` is specified on the command line.

``` yaml $(tag) == 'package-2021-03-preview'
input-file:
  - Microsoft.Network/stable/2021-02-01/applicationGateway.json
  - Microsoft.Network/stable/2021-02-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2021-02-01/availableDelegations.json
  - Microsoft.Network/stable/2021-02-01/availableServiceAliases.json
  - Microsoft.Network/stable/2021-02-01/azureFirewall.json
  - Microsoft.Network/stable/2021-02-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2021-02-01/azureWebCategory.json
  - Microsoft.Network/stable/2021-02-01/bastionHost.json
  - Microsoft.Network/stable/2021-02-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2021-02-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2021-02-01/cloudServicePublicIpAddress.json
  - Microsoft.Network/stable/2021-02-01/customIpPrefix.json
  - Microsoft.Network/stable/2021-02-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2021-02-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2021-02-01/dscpConfiguration.json
  - Microsoft.Network/stable/2021-02-01/endpointService.json
  - Microsoft.Network/stable/2021-02-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2021-02-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2021-02-01/expressRoutePort.json
  - Microsoft.Network/stable/2021-02-01/firewallPolicy.json
  - Microsoft.Network/stable/2021-02-01/ipAllocation.json
  - Microsoft.Network/stable/2021-02-01/ipGroups.json
  - Microsoft.Network/stable/2021-02-01/loadBalancer.json
  - Microsoft.Network/stable/2021-02-01/natGateway.json
  - Microsoft.Network/preview/2021-03-01-preview/network.json
  - Microsoft.Network/stable/2021-02-01/networkInterface.json
  - Microsoft.Network/preview/2021-03-01-preview/networkSecurityPerimeter.json
  - Microsoft.Network/stable/2021-02-01/networkProfile.json
  - Microsoft.Network/stable/2021-02-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2021-02-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2021-02-01/networkWatcher.json
  - Microsoft.Network/stable/2021-02-01/operation.json
  - Microsoft.Network/stable/2021-02-01/privateEndpoint.json
  - Microsoft.Network/stable/2021-02-01/privateLinkService.json
  - Microsoft.Network/stable/2021-02-01/publicIpAddress.json
  - Microsoft.Network/stable/2021-02-01/publicIpPrefix.json
  - Microsoft.Network/stable/2021-02-01/routeFilter.json
  - Microsoft.Network/stable/2021-02-01/routeTable.json
  - Microsoft.Network/stable/2021-02-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2021-02-01/serviceCommunity.json
  - Microsoft.Network/stable/2021-02-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2021-02-01/serviceTags.json
  - Microsoft.Network/stable/2021-02-01/usage.json
  - Microsoft.Network/stable/2021-02-01/virtualNetwork.json
  - Microsoft.Network/stable/2021-02-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2021-02-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2021-02-01/virtualRouter.json
  - Microsoft.Network/stable/2021-02-01/virtualWan.json
  - Microsoft.Network/stable/2021-02-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2021-02-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2021-02-01/webapplicationfirewall.json
```

### Tag: package-2020-08

These settings apply only when `--tag=package-2020-08` is specified on the command line.

``` yaml $(tag) == 'package-2020-08'
input-file:
  - Microsoft.Network/stable/2020-08-01/applicationGateway.json
  - Microsoft.Network/stable/2020-08-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2020-08-01/availableDelegations.json
  - Microsoft.Network/stable/2020-08-01/availableServiceAliases.json
  - Microsoft.Network/stable/2020-08-01/azureFirewall.json
  - Microsoft.Network/stable/2020-08-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2020-08-01/azureWebCategory.json
  - Microsoft.Network/stable/2020-08-01/bastionHost.json
  - Microsoft.Network/stable/2020-08-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2020-08-01/customIpPrefix.json
  - Microsoft.Network/stable/2020-08-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2020-08-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2020-08-01/dscpConfiguration.json
  - Microsoft.Network/stable/2020-08-01/endpointService.json
  - Microsoft.Network/stable/2020-08-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2020-08-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2020-08-01/expressRoutePort.json
  - Microsoft.Network/stable/2020-08-01/firewallPolicy.json
  - Microsoft.Network/stable/2020-08-01/ipAllocation.json
  - Microsoft.Network/stable/2020-08-01/ipGroups.json
  - Microsoft.Network/stable/2020-08-01/loadBalancer.json
  - Microsoft.Network/stable/2020-08-01/natGateway.json
  - Microsoft.Network/stable/2020-08-01/network.json
  - Microsoft.Network/stable/2020-08-01/networkInterface.json
  - Microsoft.Network/stable/2020-08-01/networkProfile.json
  - Microsoft.Network/stable/2020-08-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2020-08-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2020-08-01/networkWatcher.json
  - Microsoft.Network/stable/2020-08-01/operation.json
  - Microsoft.Network/stable/2020-08-01/privateEndpoint.json
  - Microsoft.Network/stable/2020-08-01/privateLinkService.json
  - Microsoft.Network/stable/2020-08-01/publicIpAddress.json
  - Microsoft.Network/stable/2020-08-01/publicIpPrefix.json
  - Microsoft.Network/stable/2020-08-01/routeFilter.json
  - Microsoft.Network/stable/2020-08-01/routeTable.json
  - Microsoft.Network/stable/2020-08-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2020-08-01/serviceCommunity.json
  - Microsoft.Network/stable/2020-08-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2020-08-01/serviceTags.json
  - Microsoft.Network/stable/2020-08-01/usage.json
  - Microsoft.Network/stable/2020-08-01/virtualNetwork.json
  - Microsoft.Network/stable/2020-08-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2020-08-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2020-08-01/virtualRouter.json
  - Microsoft.Network/stable/2020-08-01/virtualWan.json
  - Microsoft.Network/stable/2020-08-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2020-08-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2020-08-01/webapplicationfirewall.json
  - Microsoft.Network/stable/2020-08-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2020-08-01/cloudServicePublicIpAddress.json
```

### Tag: package-2020-07

These settings apply only when `--tag=package-2020-07` is specified on the command line.

``` yaml $(tag) == 'package-2020-07'
input-file:
  - Microsoft.Network/stable/2020-07-01/applicationGateway.json
  - Microsoft.Network/stable/2020-07-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2020-07-01/availableDelegations.json
  - Microsoft.Network/stable/2020-07-01/availableServiceAliases.json
  - Microsoft.Network/stable/2020-07-01/azureFirewall.json
  - Microsoft.Network/stable/2020-07-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2020-07-01/azureWebCategory.json
  - Microsoft.Network/stable/2020-07-01/bastionHost.json
  - Microsoft.Network/stable/2020-07-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2020-07-01/customIpPrefix.json
  - Microsoft.Network/stable/2020-07-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2020-07-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2020-07-01/dscpConfiguration.json
  - Microsoft.Network/stable/2020-07-01/endpointService.json
  - Microsoft.Network/stable/2020-07-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2020-07-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2020-07-01/expressRoutePort.json
  - Microsoft.Network/stable/2020-07-01/firewallPolicy.json
  - Microsoft.Network/stable/2020-07-01/ipAllocation.json
  - Microsoft.Network/stable/2020-07-01/ipGroups.json
  - Microsoft.Network/stable/2020-07-01/loadBalancer.json
  - Microsoft.Network/stable/2020-07-01/natGateway.json
  - Microsoft.Network/stable/2020-07-01/network.json
  - Microsoft.Network/stable/2020-07-01/networkInterface.json
  - Microsoft.Network/stable/2020-07-01/networkProfile.json
  - Microsoft.Network/stable/2020-07-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2020-07-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2020-07-01/networkWatcher.json
  - Microsoft.Network/stable/2020-07-01/operation.json
  - Microsoft.Network/stable/2020-07-01/privateEndpoint.json
  - Microsoft.Network/stable/2020-07-01/privateLinkService.json
  - Microsoft.Network/stable/2020-07-01/publicIpAddress.json
  - Microsoft.Network/stable/2020-07-01/publicIpPrefix.json
  - Microsoft.Network/stable/2020-07-01/routeFilter.json
  - Microsoft.Network/stable/2020-07-01/routeTable.json
  - Microsoft.Network/stable/2020-07-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2020-07-01/serviceCommunity.json
  - Microsoft.Network/stable/2020-07-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2020-07-01/serviceTags.json
  - Microsoft.Network/stable/2020-07-01/usage.json
  - Microsoft.Network/stable/2020-07-01/virtualNetwork.json
  - Microsoft.Network/stable/2020-07-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2020-07-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2020-07-01/virtualRouter.json
  - Microsoft.Network/stable/2020-07-01/virtualWan.json
  - Microsoft.Network/stable/2020-07-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2020-07-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2020-07-01/webapplicationfirewall.json
  - Microsoft.Network/stable/2020-07-01/cloudServiceNetworkInterface.json
  - Microsoft.Network/stable/2020-07-01/cloudServicePublicIpAddress.json
```

### Tag: package-2020-06

These settings apply only when `--tag=package-2020-06` is specified on the command line.

``` yaml $(tag) == 'package-2020-06'
input-file:
  - Microsoft.Network/stable/2020-06-01/applicationGateway.json
  - Microsoft.Network/stable/2020-06-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2020-06-01/availableDelegations.json
  - Microsoft.Network/stable/2020-06-01/availableServiceAliases.json
  - Microsoft.Network/stable/2020-06-01/azureFirewall.json
  - Microsoft.Network/stable/2020-06-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2020-06-01/bastionHost.json
  - Microsoft.Network/stable/2020-06-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2020-06-01/customIpPrefix.json
  - Microsoft.Network/stable/2020-06-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2020-06-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2020-06-01/dscpConfiguration.json
  - Microsoft.Network/stable/2020-06-01/endpointService.json
  - Microsoft.Network/stable/2020-06-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2020-06-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2020-06-01/expressRoutePort.json
  - Microsoft.Network/stable/2020-06-01/firewallPolicy.json
  - Microsoft.Network/stable/2020-06-01/ipAllocation.json
  - Microsoft.Network/stable/2020-06-01/ipGroups.json
  - Microsoft.Network/stable/2020-06-01/loadBalancer.json
  - Microsoft.Network/stable/2020-06-01/natGateway.json
  - Microsoft.Network/stable/2020-06-01/network.json
  - Microsoft.Network/stable/2020-06-01/networkInterface.json
  - Microsoft.Network/stable/2020-06-01/networkProfile.json
  - Microsoft.Network/stable/2020-06-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2020-06-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2020-06-01/networkWatcher.json
  - Microsoft.Network/stable/2020-06-01/operation.json
  - Microsoft.Network/stable/2020-06-01/privateEndpoint.json
  - Microsoft.Network/stable/2020-06-01/privateLinkService.json
  - Microsoft.Network/stable/2020-06-01/publicIpAddress.json
  - Microsoft.Network/stable/2020-06-01/publicIpPrefix.json
  - Microsoft.Network/stable/2020-06-01/routeFilter.json
  - Microsoft.Network/stable/2020-06-01/routeTable.json
  - Microsoft.Network/stable/2020-06-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2020-06-01/serviceCommunity.json
  - Microsoft.Network/stable/2020-06-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2020-06-01/serviceTags.json
  - Microsoft.Network/stable/2020-06-01/usage.json
  - Microsoft.Network/stable/2020-06-01/virtualNetwork.json
  - Microsoft.Network/stable/2020-06-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2020-06-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2020-06-01/virtualRouter.json
  - Microsoft.Network/stable/2020-06-01/virtualWan.json
  - Microsoft.Network/stable/2020-06-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2020-06-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2020-06-01/webapplicationfirewall.json
```

### Tag: package-2020-05

These settings apply only when `--tag=package-2020-05` is specified on the command line.

``` yaml $(tag) == 'package-2020-05'
input-file:
  - Microsoft.Network/stable/2020-05-01/applicationGateway.json
  - Microsoft.Network/stable/2020-05-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2020-05-01/availableDelegations.json
  - Microsoft.Network/stable/2020-05-01/availableServiceAliases.json
  - Microsoft.Network/stable/2020-05-01/azureFirewall.json
  - Microsoft.Network/stable/2020-05-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2020-05-01/bastionHost.json
  - Microsoft.Network/stable/2020-05-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2020-05-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2020-05-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2020-05-01/endpointService.json
  - Microsoft.Network/stable/2020-05-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2020-05-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2020-05-01/expressRoutePort.json
  - Microsoft.Network/stable/2020-05-01/firewallPolicy.json
  - Microsoft.Network/stable/2020-05-01/ipAllocation.json
  - Microsoft.Network/stable/2020-05-01/ipGroups.json
  - Microsoft.Network/stable/2020-05-01/loadBalancer.json
  - Microsoft.Network/stable/2020-05-01/natGateway.json
  - Microsoft.Network/stable/2020-05-01/network.json
  - Microsoft.Network/stable/2020-05-01/networkInterface.json
  - Microsoft.Network/stable/2020-05-01/networkProfile.json
  - Microsoft.Network/stable/2020-05-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2020-05-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2020-05-01/networkWatcher.json
  - Microsoft.Network/stable/2020-05-01/operation.json
  - Microsoft.Network/stable/2020-05-01/privateEndpoint.json
  - Microsoft.Network/stable/2020-05-01/privateLinkService.json
  - Microsoft.Network/stable/2020-05-01/publicIpAddress.json
  - Microsoft.Network/stable/2020-05-01/publicIpPrefix.json
  - Microsoft.Network/stable/2020-05-01/routeFilter.json
  - Microsoft.Network/stable/2020-05-01/routeTable.json
  - Microsoft.Network/stable/2020-05-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2020-05-01/serviceCommunity.json
  - Microsoft.Network/stable/2020-05-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2020-05-01/serviceTags.json
  - Microsoft.Network/stable/2020-05-01/usage.json
  - Microsoft.Network/stable/2020-05-01/virtualNetwork.json
  - Microsoft.Network/stable/2020-05-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2020-05-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2020-05-01/virtualRouter.json
  - Microsoft.Network/stable/2020-05-01/virtualWan.json
  - Microsoft.Network/stable/2020-05-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2020-05-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2020-05-01/webapplicationfirewall.json
```

### Tag: package-2020-04

These settings apply only when `--tag=package-2020-04` is specified on the command line.

``` yaml $(tag) == 'package-2020-04'
input-file:
  - Microsoft.Network/stable/2020-04-01/applicationGateway.json
  - Microsoft.Network/stable/2020-04-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2020-04-01/availableDelegations.json
  - Microsoft.Network/stable/2020-04-01/availableServiceAliases.json
  - Microsoft.Network/stable/2020-04-01/azureFirewall.json
  - Microsoft.Network/stable/2020-04-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2020-04-01/bastionHost.json
  - Microsoft.Network/stable/2020-04-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2020-04-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2020-04-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2020-04-01/endpointService.json
  - Microsoft.Network/stable/2020-04-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2020-04-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2020-04-01/expressRoutePort.json
  - Microsoft.Network/stable/2020-04-01/firewallPolicy.json
  - Microsoft.Network/stable/2020-04-01/ipAllocation.json
  - Microsoft.Network/stable/2020-04-01/ipGroups.json
  - Microsoft.Network/stable/2020-04-01/loadBalancer.json
  - Microsoft.Network/stable/2020-04-01/natGateway.json
  - Microsoft.Network/stable/2020-04-01/network.json
  - Microsoft.Network/stable/2020-04-01/networkInterface.json
  - Microsoft.Network/stable/2020-04-01/networkProfile.json
  - Microsoft.Network/stable/2020-04-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2020-04-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2020-04-01/networkWatcher.json
  - Microsoft.Network/stable/2020-04-01/operation.json
  - Microsoft.Network/stable/2020-04-01/privateEndpoint.json
  - Microsoft.Network/stable/2020-04-01/privateLinkService.json
  - Microsoft.Network/stable/2020-04-01/publicIpAddress.json
  - Microsoft.Network/stable/2020-04-01/publicIpPrefix.json
  - Microsoft.Network/stable/2020-04-01/routeFilter.json
  - Microsoft.Network/stable/2020-04-01/routeTable.json
  - Microsoft.Network/stable/2020-04-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2020-04-01/serviceCommunity.json
  - Microsoft.Network/stable/2020-04-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2020-04-01/serviceTags.json
  - Microsoft.Network/stable/2020-04-01/usage.json
  - Microsoft.Network/stable/2020-04-01/virtualNetwork.json
  - Microsoft.Network/stable/2020-04-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2020-04-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2020-04-01/virtualRouter.json
  - Microsoft.Network/stable/2020-04-01/virtualWan.json
  - Microsoft.Network/stable/2020-04-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2020-04-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2020-04-01/webapplicationfirewall.json
```

### Tag: package-2020-03

These settings apply only when `--tag=package-2020-03` is specified on the command line.

``` yaml $(tag) == 'package-2020-03'
input-file:
  - Microsoft.Network/stable/2020-03-01/applicationGateway.json
  - Microsoft.Network/stable/2020-03-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2020-03-01/availableDelegations.json
  - Microsoft.Network/stable/2020-03-01/availableServiceAliases.json
  - Microsoft.Network/stable/2020-03-01/azureFirewall.json
  - Microsoft.Network/stable/2020-03-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2020-03-01/bastionHost.json
  - Microsoft.Network/stable/2020-03-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2020-03-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2020-03-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2020-03-01/endpointService.json
  - Microsoft.Network/stable/2020-03-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2020-03-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2020-03-01/expressRoutePort.json
  - Microsoft.Network/stable/2020-03-01/firewallPolicy.json
  - Microsoft.Network/stable/2020-03-01/ipAllocation.json
  - Microsoft.Network/stable/2020-03-01/ipGroups.json
  - Microsoft.Network/stable/2020-03-01/loadBalancer.json
  - Microsoft.Network/stable/2020-03-01/natGateway.json
  - Microsoft.Network/stable/2020-03-01/network.json
  - Microsoft.Network/stable/2020-03-01/networkInterface.json
  - Microsoft.Network/stable/2020-03-01/networkProfile.json
  - Microsoft.Network/stable/2020-03-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2020-03-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2020-03-01/networkWatcher.json
  - Microsoft.Network/stable/2020-03-01/operation.json
  - Microsoft.Network/stable/2020-03-01/privateEndpoint.json
  - Microsoft.Network/stable/2020-03-01/privateLinkService.json
  - Microsoft.Network/stable/2020-03-01/publicIpAddress.json
  - Microsoft.Network/stable/2020-03-01/publicIpPrefix.json
  - Microsoft.Network/stable/2020-03-01/routeFilter.json
  - Microsoft.Network/stable/2020-03-01/routeTable.json
  - Microsoft.Network/stable/2020-03-01/securityPartnerProvider.json
  - Microsoft.Network/stable/2020-03-01/serviceCommunity.json
  - Microsoft.Network/stable/2020-03-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2020-03-01/serviceTags.json
  - Microsoft.Network/stable/2020-03-01/usage.json
  - Microsoft.Network/stable/2020-03-01/virtualNetwork.json
  - Microsoft.Network/stable/2020-03-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2020-03-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2020-03-01/virtualRouter.json
  - Microsoft.Network/stable/2020-03-01/virtualWan.json
  - Microsoft.Network/stable/2020-03-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2020-03-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2020-03-01/webapplicationfirewall.json
```

### Tag: package-2019-12

These settings apply only when `--tag=package-2019-12` is specified on the command line.

``` yaml $(tag) == 'package-2019-12'
input-file:
  - Microsoft.Network/stable/2019-12-01/applicationGateway.json
  - Microsoft.Network/stable/2019-12-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2019-12-01/availableDelegations.json
  - Microsoft.Network/stable/2019-12-01/availableServiceAliases.json
  - Microsoft.Network/stable/2019-12-01/azureFirewall.json
  - Microsoft.Network/stable/2019-12-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2019-12-01/bastionHost.json
  - Microsoft.Network/stable/2019-12-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2019-12-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2019-12-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2019-12-01/endpointService.json
  - Microsoft.Network/stable/2019-12-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2019-12-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2019-12-01/expressRouteGateway.json
  - Microsoft.Network/stable/2019-12-01/expressRoutePort.json
  - Microsoft.Network/stable/2019-12-01/firewallPolicy.json
  - Microsoft.Network/stable/2019-12-01/ipGroups.json
  - Microsoft.Network/stable/2019-12-01/loadBalancer.json
  - Microsoft.Network/stable/2019-12-01/natGateway.json
  - Microsoft.Network/stable/2019-12-01/network.json
  - Microsoft.Network/stable/2019-12-01/networkInterface.json
  - Microsoft.Network/stable/2019-12-01/networkProfile.json
  - Microsoft.Network/stable/2019-12-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2019-12-01/networkVirtualAppliance.json
  - Microsoft.Network/stable/2019-12-01/networkWatcher.json
  - Microsoft.Network/stable/2019-12-01/operation.json
  - Microsoft.Network/stable/2019-12-01/privateEndpoint.json
  - Microsoft.Network/stable/2019-12-01/privateLinkService.json
  - Microsoft.Network/stable/2019-12-01/publicIpAddress.json
  - Microsoft.Network/stable/2019-12-01/publicIpPrefix.json
  - Microsoft.Network/stable/2019-12-01/routeFilter.json
  - Microsoft.Network/stable/2019-12-01/routeTable.json
  - Microsoft.Network/stable/2019-12-01/serviceCommunity.json
  - Microsoft.Network/stable/2019-12-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2019-12-01/serviceTags.json
  - Microsoft.Network/stable/2019-12-01/usage.json
  - Microsoft.Network/stable/2019-12-01/virtualNetwork.json
  - Microsoft.Network/stable/2019-12-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2019-12-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2019-12-01/virtualRouter.json
  - Microsoft.Network/stable/2019-12-01/virtualWan.json
  - Microsoft.Network/stable/2019-12-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2019-12-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2019-12-01/webapplicationfirewall.json
```

### Tag: package-2019-11

These settings apply only when `--tag=package-2019-11` is specified on the command line.

``` yaml $(tag) == 'package-2019-11'
input-file:
  - Microsoft.Network/stable/2019-11-01/applicationGateway.json
  - Microsoft.Network/stable/2019-11-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2019-11-01/availableDelegations.json
  - Microsoft.Network/stable/2019-11-01/availableServiceAliases.json
  - Microsoft.Network/stable/2019-11-01/azureFirewall.json
  - Microsoft.Network/stable/2019-11-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2019-11-01/bastionHost.json
  - Microsoft.Network/stable/2019-11-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2019-11-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2019-11-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2019-11-01/endpointService.json
  - Microsoft.Network/stable/2019-11-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2019-11-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2019-11-01/expressRouteGateway.json
  - Microsoft.Network/stable/2019-11-01/expressRoutePort.json
  - Microsoft.Network/stable/2019-11-01/firewallPolicy.json
  - Microsoft.Network/stable/2019-11-01/ipGroups.json
  - Microsoft.Network/stable/2019-11-01/loadBalancer.json
  - Microsoft.Network/stable/2019-11-01/natGateway.json
  - Microsoft.Network/stable/2019-11-01/network.json
  - Microsoft.Network/stable/2019-11-01/networkInterface.json
  - Microsoft.Network/stable/2019-11-01/networkProfile.json
  - Microsoft.Network/stable/2019-11-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2019-11-01/networkWatcher.json
  - Microsoft.Network/stable/2019-11-01/operation.json
  - Microsoft.Network/stable/2019-11-01/privateEndpoint.json
  - Microsoft.Network/stable/2019-11-01/privateLinkService.json
  - Microsoft.Network/stable/2019-11-01/publicIpAddress.json
  - Microsoft.Network/stable/2019-11-01/publicIpPrefix.json
  - Microsoft.Network/stable/2019-11-01/routeFilter.json
  - Microsoft.Network/stable/2019-11-01/routeTable.json
  - Microsoft.Network/stable/2019-11-01/serviceCommunity.json
  - Microsoft.Network/stable/2019-11-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2019-11-01/serviceTags.json
  - Microsoft.Network/stable/2019-11-01/usage.json
  - Microsoft.Network/stable/2019-11-01/virtualNetwork.json
  - Microsoft.Network/stable/2019-11-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2019-11-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2019-11-01/virtualRouter.json
  - Microsoft.Network/stable/2019-11-01/virtualWan.json
  - Microsoft.Network/stable/2019-11-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2019-11-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2019-11-01/webapplicationfirewall.json
```

### Tag: package-2019-09

These settings apply only when `--tag=package-2019-09` is specified on the command line.

``` yaml $(tag) == 'package-2019-09'
input-file:
  - Microsoft.Network/stable/2019-09-01/applicationGateway.json
  - Microsoft.Network/stable/2019-09-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2019-09-01/availableDelegations.json
  - Microsoft.Network/stable/2019-09-01/availableServiceAliases.json
  - Microsoft.Network/stable/2019-09-01/azureFirewall.json
  - Microsoft.Network/stable/2019-09-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2019-09-01/bastionHost.json
  - Microsoft.Network/stable/2019-09-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2019-09-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2019-09-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2019-09-01/endpointService.json
  - Microsoft.Network/stable/2019-09-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2019-09-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2019-09-01/expressRouteGateway.json
  - Microsoft.Network/stable/2019-09-01/expressRoutePort.json
  - Microsoft.Network/stable/2019-09-01/firewallPolicy.json
  - Microsoft.Network/stable/2019-09-01/ipGroups.json
  - Microsoft.Network/stable/2019-09-01/loadBalancer.json
  - Microsoft.Network/stable/2019-09-01/natGateway.json
  - Microsoft.Network/stable/2019-09-01/network.json
  - Microsoft.Network/stable/2019-09-01/networkInterface.json
  - Microsoft.Network/stable/2019-09-01/networkProfile.json
  - Microsoft.Network/stable/2019-09-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2019-09-01/networkWatcher.json
  - Microsoft.Network/stable/2019-09-01/networkWatcherConnectionMonitorV1.json
  - Microsoft.Network/stable/2019-09-01/operation.json
  - Microsoft.Network/stable/2019-09-01/privateEndpoint.json
  - Microsoft.Network/stable/2019-09-01/privateLinkService.json
  - Microsoft.Network/stable/2019-09-01/publicIpAddress.json
  - Microsoft.Network/stable/2019-09-01/publicIpPrefix.json
  - Microsoft.Network/stable/2019-09-01/routeFilter.json
  - Microsoft.Network/stable/2019-09-01/routeTable.json
  - Microsoft.Network/stable/2019-09-01/serviceCommunity.json
  - Microsoft.Network/stable/2019-09-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2019-09-01/serviceTags.json
  - Microsoft.Network/stable/2019-09-01/usage.json
  - Microsoft.Network/stable/2019-09-01/virtualNetwork.json
  - Microsoft.Network/stable/2019-09-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2019-09-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2019-09-01/virtualRouter.json
  - Microsoft.Network/stable/2019-09-01/virtualWan.json
  - Microsoft.Network/stable/2019-09-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2019-09-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2019-09-01/webapplicationfirewall.json
```

### Tag: package-2019-08

These settings apply only when `--tag=package-2019-08` is specified on the command line.

``` yaml $(tag) == 'package-2019-08'
input-file:
  - Microsoft.Network/stable/2019-08-01/applicationGateway.json
  - Microsoft.Network/stable/2019-08-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2019-08-01/availableDelegations.json
  - Microsoft.Network/stable/2019-08-01/availableServiceAliases.json
  - Microsoft.Network/stable/2019-08-01/azureFirewall.json
  - Microsoft.Network/stable/2019-08-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2019-08-01/bastionHost.json
  - Microsoft.Network/stable/2019-08-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2019-08-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2019-08-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2019-08-01/endpointService.json
  - Microsoft.Network/stable/2019-08-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2019-08-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2019-08-01/expressRouteGateway.json
  - Microsoft.Network/stable/2019-08-01/expressRoutePort.json
  - Microsoft.Network/stable/2019-08-01/firewallPolicy.json
  - Microsoft.Network/stable/2019-08-01/loadBalancer.json
  - Microsoft.Network/stable/2019-08-01/natGateway.json
  - Microsoft.Network/stable/2019-08-01/network.json
  - Microsoft.Network/stable/2019-08-01/networkInterface.json
  - Microsoft.Network/stable/2019-08-01/networkProfile.json
  - Microsoft.Network/stable/2019-08-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2019-08-01/networkWatcher.json
  - Microsoft.Network/stable/2019-08-01/networkWatcherConnectionMonitorV1.json
  - Microsoft.Network/stable/2019-08-01/operation.json
  - Microsoft.Network/stable/2019-08-01/privateEndpoint.json
  - Microsoft.Network/stable/2019-08-01/privateLinkService.json
  - Microsoft.Network/stable/2019-08-01/publicIpAddress.json
  - Microsoft.Network/stable/2019-08-01/publicIpPrefix.json
  - Microsoft.Network/stable/2019-08-01/routeFilter.json
  - Microsoft.Network/stable/2019-08-01/routeTable.json
  - Microsoft.Network/stable/2019-08-01/serviceCommunity.json
  - Microsoft.Network/stable/2019-08-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2019-08-01/serviceTags.json
  - Microsoft.Network/stable/2019-08-01/usage.json
  - Microsoft.Network/stable/2019-08-01/virtualNetwork.json
  - Microsoft.Network/stable/2019-08-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2019-08-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2019-08-01/virtualRouter.json
  - Microsoft.Network/stable/2019-08-01/virtualWan.json
  - Microsoft.Network/stable/2019-08-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2019-08-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2019-08-01/webapplicationfirewall.json
```

### Tag: package-2019-07

These settings apply only when `--tag=package-2019-07` is specified on the command line.

``` yaml $(tag) == 'package-2019-07'
input-file:
  - Microsoft.Network/stable/2019-07-01/applicationGateway.json
  - Microsoft.Network/stable/2019-07-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2019-07-01/availableDelegations.json
  - Microsoft.Network/stable/2019-07-01/azureFirewall.json
  - Microsoft.Network/stable/2019-07-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2019-07-01/bastionHost.json
  - Microsoft.Network/stable/2019-07-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2019-07-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2019-07-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2019-07-01/endpointService.json
  - Microsoft.Network/stable/2019-07-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2019-07-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2019-07-01/expressRouteGateway.json
  - Microsoft.Network/stable/2019-07-01/expressRoutePort.json
  - Microsoft.Network/stable/2019-07-01/firewallPolicy.json
  - Microsoft.Network/stable/2019-07-01/loadBalancer.json
  - Microsoft.Network/stable/2019-07-01/natGateway.json
  - Microsoft.Network/stable/2019-07-01/network.json
  - Microsoft.Network/stable/2019-07-01/networkInterface.json
  - Microsoft.Network/stable/2019-07-01/networkProfile.json
  - Microsoft.Network/stable/2019-07-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2019-07-01/networkWatcher.json
  - Microsoft.Network/stable/2019-07-01/networkWatcherConnectionMonitorV1.json
  - Microsoft.Network/stable/2019-07-01/operation.json
  - Microsoft.Network/stable/2019-07-01/privateEndpoint.json
  - Microsoft.Network/stable/2019-07-01/privateLinkService.json
  - Microsoft.Network/stable/2019-07-01/publicIpAddress.json
  - Microsoft.Network/stable/2019-07-01/publicIpPrefix.json
  - Microsoft.Network/stable/2019-07-01/routeFilter.json
  - Microsoft.Network/stable/2019-07-01/routeTable.json
  - Microsoft.Network/stable/2019-07-01/serviceCommunity.json
  - Microsoft.Network/stable/2019-07-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2019-07-01/serviceTags.json
  - Microsoft.Network/stable/2019-07-01/usage.json
  - Microsoft.Network/stable/2019-07-01/virtualNetwork.json
  - Microsoft.Network/stable/2019-07-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2019-07-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2019-07-01/virtualRouter.json
  - Microsoft.Network/stable/2019-07-01/virtualWan.json
  - Microsoft.Network/stable/2019-07-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2019-07-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2019-07-01/webapplicationfirewall.json
```

### Tag: package-2019-06

These settings apply only when `--tag=package-2019-06` is specified on the command line.

``` yaml $(tag) == 'package-2019-06'
input-file:
  - Microsoft.Network/stable/2019-06-01/applicationGateway.json
  - Microsoft.Network/stable/2019-06-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2019-06-01/availableDelegations.json
  - Microsoft.Network/stable/2019-06-01/azureFirewall.json
  - Microsoft.Network/stable/2019-06-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2019-06-01/bastionHost.json
  - Microsoft.Network/stable/2019-06-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2019-06-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2019-06-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2019-06-01/endpointService.json
  - Microsoft.Network/stable/2019-06-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2019-06-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2019-06-01/expressRouteGateway.json
  - Microsoft.Network/stable/2019-06-01/expressRoutePort.json
  - Microsoft.Network/stable/2019-06-01/firewallPolicy.json
  - Microsoft.Network/stable/2019-06-01/loadBalancer.json
  - Microsoft.Network/stable/2019-06-01/natGateway.json
  - Microsoft.Network/stable/2019-06-01/network.json
  - Microsoft.Network/stable/2019-06-01/networkInterface.json
  - Microsoft.Network/stable/2019-06-01/networkProfile.json
  - Microsoft.Network/stable/2019-06-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2019-06-01/networkWatcher.json
  - Microsoft.Network/stable/2019-06-01/networkWatcherConnectionMonitorV1.json
  - Microsoft.Network/stable/2019-06-01/operation.json
  - Microsoft.Network/stable/2019-06-01/privateEndpoint.json
  - Microsoft.Network/stable/2019-06-01/privateLinkService.json
  - Microsoft.Network/stable/2019-06-01/publicIpAddress.json
  - Microsoft.Network/stable/2019-06-01/publicIpPrefix.json
  - Microsoft.Network/stable/2019-06-01/routeFilter.json
  - Microsoft.Network/stable/2019-06-01/routeTable.json
  - Microsoft.Network/stable/2019-06-01/serviceCommunity.json
  - Microsoft.Network/stable/2019-06-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2019-06-01/serviceTags.json
  - Microsoft.Network/stable/2019-06-01/usage.json
  - Microsoft.Network/stable/2019-06-01/virtualNetwork.json
  - Microsoft.Network/stable/2019-06-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2019-06-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2019-06-01/virtualWan.json
  - Microsoft.Network/stable/2019-06-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2019-06-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2019-06-01/webapplicationfirewall.json
```

### Tag: package-2019-04

These settings apply only when `--tag=package-2019-04` is specified on the command line.

``` yaml $(tag) == 'package-2019-04'
input-file:
  - Microsoft.Network/stable/2019-04-01/applicationGateway.json
  - Microsoft.Network/stable/2019-04-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2019-04-01/availableDelegations.json
  - Microsoft.Network/stable/2019-04-01/azureFirewall.json
  - Microsoft.Network/stable/2019-04-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2019-04-01/bastionHost.json
  - Microsoft.Network/stable/2019-04-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2019-04-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2019-04-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2019-04-01/endpointService.json
  - Microsoft.Network/stable/2019-04-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2019-04-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2019-04-01/expressRouteGateway.json
  - Microsoft.Network/stable/2019-04-01/expressRoutePort.json
  - Microsoft.Network/stable/2019-04-01/privateEndpoint.json
  - Microsoft.Network/stable/2019-04-01/privateLinkService.json
  - Microsoft.Network/stable/2019-04-01/loadBalancer.json
  - Microsoft.Network/stable/2019-04-01/natGateway.json
  - Microsoft.Network/stable/2019-04-01/network.json
  - Microsoft.Network/stable/2019-04-01/networkInterface.json
  - Microsoft.Network/stable/2019-04-01/networkProfile.json
  - Microsoft.Network/stable/2019-04-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2019-04-01/networkWatcher.json
  - Microsoft.Network/stable/2019-04-01/operation.json
  - Microsoft.Network/stable/2019-04-01/publicIpAddress.json
  - Microsoft.Network/stable/2019-04-01/publicIpPrefix.json
  - Microsoft.Network/stable/2019-04-01/routeFilter.json
  - Microsoft.Network/stable/2019-04-01/routeTable.json
  - Microsoft.Network/stable/2019-04-01/serviceCommunity.json
  - Microsoft.Network/stable/2019-04-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2019-04-01/serviceTags.json
  - Microsoft.Network/stable/2019-04-01/usage.json
  - Microsoft.Network/stable/2019-04-01/virtualNetwork.json
  - Microsoft.Network/stable/2019-04-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2019-04-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2019-04-01/virtualWan.json
  - Microsoft.Network/stable/2019-04-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2019-04-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2019-04-01/webapplicationfirewall.json
```

### Tag: package-2019-02

These settings apply only when `--tag=package-2019-02` is specified on the command line.

``` yaml $(tag) == 'package-2019-02'
input-file:
  - Microsoft.Network/stable/2019-02-01/applicationGateway.json
  - Microsoft.Network/stable/2019-02-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2019-02-01/availableDelegations.json
  - Microsoft.Network/stable/2019-02-01/azureFirewall.json
  - Microsoft.Network/stable/2019-02-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2019-02-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2019-02-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2019-02-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2019-02-01/endpointService.json
  - Microsoft.Network/stable/2019-02-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2019-02-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2019-02-01/expressRouteGateway.json
  - Microsoft.Network/stable/2019-02-01/expressRoutePort.json
  - Microsoft.Network/stable/2019-02-01/interfaceEndpoint.json
  - Microsoft.Network/stable/2019-02-01/loadBalancer.json
  - Microsoft.Network/stable/2019-02-01/natGateway.json
  - Microsoft.Network/stable/2019-02-01/network.json
  - Microsoft.Network/stable/2019-02-01/networkInterface.json
  - Microsoft.Network/stable/2019-02-01/networkProfile.json
  - Microsoft.Network/stable/2019-02-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2019-02-01/networkWatcher.json
  - Microsoft.Network/stable/2019-02-01/operation.json
  - Microsoft.Network/stable/2019-02-01/publicIpAddress.json
  - Microsoft.Network/stable/2019-02-01/publicIpPrefix.json
  - Microsoft.Network/stable/2019-02-01/routeFilter.json
  - Microsoft.Network/stable/2019-02-01/routeTable.json
  - Microsoft.Network/stable/2019-02-01/serviceCommunity.json
  - Microsoft.Network/stable/2019-02-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2019-02-01/usage.json
  - Microsoft.Network/stable/2019-02-01/virtualNetwork.json
  - Microsoft.Network/stable/2019-02-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2019-02-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2019-02-01/virtualWan.json
  - Microsoft.Network/stable/2019-02-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2019-02-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2019-02-01/webapplicationfirewall.json
```

### Tag: package-2018-12

These settings apply only when `--tag=package-2018-12` is specified on the command line.

``` yaml $(tag) == 'package-2018-12'
input-file:
  - Microsoft.Network/stable/2018-12-01/applicationGateway.json
  - Microsoft.Network/stable/2018-12-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2018-12-01/availableDelegations.json
  - Microsoft.Network/stable/2018-12-01/azureFirewall.json
  - Microsoft.Network/stable/2018-12-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2018-12-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2018-12-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2018-12-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2018-12-01/endpointService.json
  - Microsoft.Network/stable/2018-12-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2018-12-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2018-12-01/expressRouteGateway.json
  - Microsoft.Network/stable/2018-12-01/expressRoutePort.json
  - Microsoft.Network/stable/2018-12-01/interfaceEndpoint.json
  - Microsoft.Network/stable/2018-12-01/loadBalancer.json
  - Microsoft.Network/stable/2018-12-01/network.json
  - Microsoft.Network/stable/2018-12-01/networkInterface.json
  - Microsoft.Network/stable/2018-12-01/networkProfile.json
  - Microsoft.Network/stable/2018-12-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2018-12-01/networkWatcher.json
  - Microsoft.Network/stable/2018-12-01/operation.json
  - Microsoft.Network/stable/2018-12-01/publicIpAddress.json
  - Microsoft.Network/stable/2018-12-01/publicIpPrefix.json
  - Microsoft.Network/stable/2018-12-01/routeFilter.json
  - Microsoft.Network/stable/2018-12-01/routeTable.json
  - Microsoft.Network/stable/2018-12-01/serviceCommunity.json
  - Microsoft.Network/stable/2018-12-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2018-12-01/usage.json
  - Microsoft.Network/stable/2018-12-01/virtualNetwork.json
  - Microsoft.Network/stable/2018-12-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2018-12-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2018-12-01/virtualWan.json
  - Microsoft.Network/stable/2018-12-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2018-12-01/vmssPublicIpAddress.json
  - Microsoft.Network/stable/2018-12-01/webapplicationfirewall.json
```

### Tag: package-2018-12-only

These settings apply only when `--tag=package-2018-12-only` is specified on the command line.

``` yaml $(tag) == 'package-2018-12-only'
input-file:
  - Microsoft.Network/stable/2018-12-01/applicationGateway.json
  - Microsoft.Network/stable/2018-12-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2018-12-01/availableDelegations.json
  - Microsoft.Network/stable/2018-12-01/azureFirewall.json
  - Microsoft.Network/stable/2018-12-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2018-12-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2018-12-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2018-12-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2018-12-01/endpointService.json
  - Microsoft.Network/stable/2018-12-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2018-12-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2018-12-01/expressRouteGateway.json
  - Microsoft.Network/stable/2018-12-01/expressRoutePort.json
  - Microsoft.Network/stable/2018-12-01/interfaceEndpoint.json
  - Microsoft.Network/stable/2018-12-01/loadBalancer.json
  - Microsoft.Network/stable/2018-12-01/network.json
  - Microsoft.Network/stable/2018-12-01/networkInterface.json
  - Microsoft.Network/stable/2018-12-01/networkProfile.json
  - Microsoft.Network/stable/2018-12-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2018-12-01/networkWatcher.json
  - Microsoft.Network/stable/2018-12-01/operation.json
  - Microsoft.Network/stable/2018-12-01/publicIpAddress.json
  - Microsoft.Network/stable/2018-12-01/publicIpPrefix.json
  - Microsoft.Network/stable/2018-12-01/routeFilter.json
  - Microsoft.Network/stable/2018-12-01/routeTable.json
  - Microsoft.Network/stable/2018-12-01/serviceCommunity.json
  - Microsoft.Network/stable/2018-12-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2018-12-01/usage.json
  - Microsoft.Network/stable/2018-12-01/virtualNetwork.json
  - Microsoft.Network/stable/2018-12-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2018-12-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2018-12-01/virtualWan.json
```

### Tag: package-2018-11

These settings apply only when `--tag=package-2018-11` is specified on the command line.

``` yaml $(tag) == 'package-2018-11'
input-file:
  - Microsoft.Network/stable/2018-11-01/applicationGateway.json
  - Microsoft.Network/stable/2018-11-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2018-11-01/availableDelegations.json
  - Microsoft.Network/stable/2018-11-01/azureFirewall.json
  - Microsoft.Network/stable/2018-11-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2018-11-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2018-11-01/ddosCustomPolicy.json
  - Microsoft.Network/stable/2018-11-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2018-11-01/endpointService.json
  - Microsoft.Network/stable/2018-11-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2018-11-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2018-11-01/expressRouteGateway.json
  - Microsoft.Network/stable/2018-11-01/expressRoutePort.json
  - Microsoft.Network/stable/2018-11-01/interfaceEndpoint.json
  - Microsoft.Network/stable/2018-11-01/loadBalancer.json
  - Microsoft.Network/stable/2018-11-01/network.json
  - Microsoft.Network/stable/2018-11-01/networkInterface.json
  - Microsoft.Network/stable/2018-11-01/networkProfile.json
  - Microsoft.Network/stable/2018-11-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2018-11-01/networkWatcher.json
  - Microsoft.Network/stable/2018-11-01/operation.json
  - Microsoft.Network/stable/2018-11-01/publicIpAddress.json
  - Microsoft.Network/stable/2018-11-01/publicIpPrefix.json
  - Microsoft.Network/stable/2018-11-01/routeFilter.json
  - Microsoft.Network/stable/2018-11-01/routeTable.json
  - Microsoft.Network/stable/2018-11-01/serviceCommunity.json
  - Microsoft.Network/stable/2018-11-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2018-11-01/usage.json
  - Microsoft.Network/stable/2018-11-01/virtualNetwork.json
  - Microsoft.Network/stable/2018-11-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2018-11-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2018-11-01/virtualWan.json
  - Microsoft.Network/stable/2018-11-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2018-11-01/vmssPublicIpAddress.json
```

### Tag: package-2018-10

These settings apply only when `--tag=package-2018-10` is specified on the command line.

``` yaml $(tag) == 'package-2018-10'
input-file:
  - Microsoft.Network/stable/2018-10-01/applicationGateway.json
  - Microsoft.Network/stable/2018-10-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2018-10-01/availableDelegations.json
  - Microsoft.Network/stable/2018-10-01/azureFirewall.json
  - Microsoft.Network/stable/2018-10-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2018-10-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2018-10-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2018-10-01/endpointService.json
  - Microsoft.Network/stable/2018-10-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2018-10-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2018-10-01/expressRouteGateway.json
  - Microsoft.Network/stable/2018-10-01/expressRoutePort.json
  - Microsoft.Network/stable/2018-10-01/interfaceEndpoint.json
  - Microsoft.Network/stable/2018-10-01/loadBalancer.json
  - Microsoft.Network/stable/2018-10-01/network.json
  - Microsoft.Network/stable/2018-10-01/networkInterface.json
  - Microsoft.Network/stable/2018-10-01/networkProfile.json
  - Microsoft.Network/stable/2018-10-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2018-10-01/networkWatcher.json
  - Microsoft.Network/stable/2018-10-01/operation.json
  - Microsoft.Network/stable/2018-10-01/publicIpAddress.json
  - Microsoft.Network/stable/2018-10-01/publicIpPrefix.json
  - Microsoft.Network/stable/2018-10-01/routeFilter.json
  - Microsoft.Network/stable/2018-10-01/routeTable.json
  - Microsoft.Network/stable/2018-10-01/serviceCommunity.json
  - Microsoft.Network/stable/2018-10-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2018-10-01/usage.json
  - Microsoft.Network/stable/2018-10-01/virtualNetwork.json
  - Microsoft.Network/stable/2018-10-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2018-10-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2018-10-01/virtualWan.json
  - Microsoft.Network/stable/2018-10-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2018-10-01/vmssPublicIpAddress.json
```

### Tag: package-2018-08

These settings apply only when `--tag=package-2018-08` is specified on the command line.

``` yaml $(tag) == 'package-2018-08'
input-file:
  - Microsoft.Network/stable/2018-08-01/applicationGateway.json
  - Microsoft.Network/stable/2018-08-01/applicationSecurityGroup.json
  - Microsoft.Network/stable/2018-08-01/availableDelegations.json
  - Microsoft.Network/stable/2018-08-01/azureFirewall.json
  - Microsoft.Network/stable/2018-08-01/azureFirewallFqdnTag.json
  - Microsoft.Network/stable/2018-08-01/checkDnsAvailability.json
  - Microsoft.Network/stable/2018-08-01/ddosProtectionPlan.json
  - Microsoft.Network/stable/2018-08-01/endpointService.json
  - Microsoft.Network/stable/2018-08-01/expressRouteCircuit.json
  - Microsoft.Network/stable/2018-08-01/expressRouteCrossConnection.json
  - Microsoft.Network/stable/2018-08-01/expressRouteGateway.json
  - Microsoft.Network/stable/2018-08-01/expressRoutePort.json
  - Microsoft.Network/stable/2018-08-01/interfaceEndpoint.json
  - Microsoft.Network/stable/2018-08-01/loadBalancer.json
  - Microsoft.Network/stable/2018-08-01/network.json
  - Microsoft.Network/stable/2018-08-01/networkInterface.json
  - Microsoft.Network/stable/2018-08-01/networkProfile.json
  - Microsoft.Network/stable/2018-08-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2018-08-01/networkWatcher.json
  - Microsoft.Network/stable/2018-08-01/operation.json
  - Microsoft.Network/stable/2018-08-01/publicIpAddress.json
  - Microsoft.Network/stable/2018-08-01/publicIpPrefix.json
  - Microsoft.Network/stable/2018-08-01/routeFilter.json
  - Microsoft.Network/stable/2018-08-01/routeTable.json
  - Microsoft.Network/stable/2018-08-01/serviceCommunity.json
  - Microsoft.Network/stable/2018-08-01/serviceEndpointPolicy.json
  - Microsoft.Network/stable/2018-08-01/usage.json
  - Microsoft.Network/stable/2018-08-01/virtualNetwork.json
  - Microsoft.Network/stable/2018-08-01/virtualNetworkTap.json
  - Microsoft.Network/stable/2018-08-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2018-08-01/virtualWan.json
  - Microsoft.Network/stable/2018-08-01/vmssNetworkInterface.json
  - Microsoft.Network/stable/2018-08-01/vmssPublicIpAddress.json
```

### Tag: package-2018-07

These settings apply only when `--tag=package-2018-07` is specified on the command line.

``` yaml $(tag) == 'package-2018-07'

input-file:
- Microsoft.Network/stable/2018-07-01/azureFirewall.json
- Microsoft.Network/stable/2018-07-01/applicationGateway.json
- Microsoft.Network/stable/2018-07-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2018-07-01/checkDnsAvailability.json
- Microsoft.Network/stable/2018-07-01/ddosProtectionPlan.json
- Microsoft.Network/stable/2018-07-01/endpointService.json
- Microsoft.Network/stable/2018-07-01/expressRouteCircuit.json
- Microsoft.Network/stable/2018-07-01/expressRouteCrossConnection.json
- Microsoft.Network/stable/2018-07-01/loadBalancer.json
- Microsoft.Network/stable/2018-07-01/network.json
- Microsoft.Network/stable/2018-07-01/networkInterface.json
- Microsoft.Network/stable/2018-07-01/networkSecurityGroup.json
- Microsoft.Network/stable/2018-07-01/networkWatcher.json
- Microsoft.Network/stable/2018-07-01/operation.json
- Microsoft.Network/stable/2018-07-01/publicIpAddress.json
- Microsoft.Network/stable/2018-07-01/publicIpPrefix.json
- Microsoft.Network/stable/2018-07-01/routeFilter.json
- Microsoft.Network/stable/2018-07-01/routeTable.json
- Microsoft.Network/stable/2018-07-01/serviceCommunity.json
- Microsoft.Network/stable/2018-07-01/usage.json
- Microsoft.Network/stable/2018-07-01/virtualNetwork.json
- Microsoft.Network/stable/2018-07-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2018-07-01/virtualWan.json
- Microsoft.Network/stable/2018-07-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2018-07-01/vmssPublicIpAddress.json
- Microsoft.Network/stable/2018-07-01/serviceEndpointPolicy.json
```

### Tag: package-2018-06

These settings apply only when `--tag=package-2018-06` is specified on the command line.

``` yaml $(tag) == 'package-2018-06'

input-file:
- Microsoft.Network/stable/2018-06-01/azureFirewall.json
- Microsoft.Network/stable/2018-06-01/applicationGateway.json
- Microsoft.Network/stable/2018-06-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2018-06-01/checkDnsAvailability.json
- Microsoft.Network/stable/2018-06-01/ddosProtectionPlan.json
- Microsoft.Network/stable/2018-06-01/endpointService.json
- Microsoft.Network/stable/2018-06-01/expressRouteCircuit.json
- Microsoft.Network/stable/2018-06-01/expressRouteCrossConnection.json
- Microsoft.Network/stable/2018-06-01/loadBalancer.json
- Microsoft.Network/stable/2018-06-01/network.json
- Microsoft.Network/stable/2018-06-01/networkInterface.json
- Microsoft.Network/stable/2018-06-01/networkSecurityGroup.json
- Microsoft.Network/stable/2018-06-01/networkWatcher.json
- Microsoft.Network/stable/2018-06-01/operation.json
- Microsoft.Network/stable/2018-06-01/publicIpAddress.json
- Microsoft.Network/stable/2018-06-01/routeFilter.json
- Microsoft.Network/stable/2018-06-01/routeTable.json
- Microsoft.Network/stable/2018-06-01/serviceCommunity.json
- Microsoft.Network/stable/2018-06-01/usage.json
- Microsoft.Network/stable/2018-06-01/virtualNetwork.json
- Microsoft.Network/stable/2018-06-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2018-06-01/virtualWan.json
- Microsoft.Network/stable/2018-06-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2018-06-01/vmssPublicIpAddress.json
```

### Tag: package-2018-04

These settings apply only when `--tag=package-2018-04` is specified on the command line.

``` yaml $(tag) == 'package-2018-04'

input-file:
- Microsoft.Network/stable/2018-04-01/azureFirewall.json
- Microsoft.Network/stable/2018-04-01/applicationGateway.json
- Microsoft.Network/stable/2018-04-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2018-04-01/checkDnsAvailability.json
- Microsoft.Network/stable/2018-04-01/ddosProtectionPlan.json
- Microsoft.Network/stable/2018-04-01/endpointService.json
- Microsoft.Network/stable/2018-04-01/expressRouteCircuit.json
- Microsoft.Network/stable/2018-04-01/expressRouteCrossConnection.json
- Microsoft.Network/stable/2018-04-01/loadBalancer.json
- Microsoft.Network/stable/2018-04-01/network.json
- Microsoft.Network/stable/2018-04-01/networkInterface.json
- Microsoft.Network/stable/2018-04-01/networkSecurityGroup.json
- Microsoft.Network/stable/2018-04-01/networkWatcher.json
- Microsoft.Network/stable/2018-04-01/operation.json
- Microsoft.Network/stable/2018-04-01/publicIpAddress.json
- Microsoft.Network/stable/2018-04-01/routeFilter.json
- Microsoft.Network/stable/2018-04-01/routeTable.json
- Microsoft.Network/stable/2018-04-01/serviceCommunity.json
- Microsoft.Network/stable/2018-04-01/usage.json
- Microsoft.Network/stable/2018-04-01/virtualNetwork.json
- Microsoft.Network/stable/2018-04-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2018-04-01/virtualWan.json
- Microsoft.Network/stable/2018-04-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2018-04-01/vmssPublicIpAddress.json
```

### Tag: package-2018-02

These settings apply only when `--tag=package-2018-02` is specified on the command line.

``` yaml $(tag) == 'package-2018-02'

input-file:
- Microsoft.Network/stable/2018-02-01/applicationGateway.json
- Microsoft.Network/stable/2018-02-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2018-02-01/checkDnsAvailability.json
- Microsoft.Network/stable/2018-02-01/ddosProtectionPlan.json
- Microsoft.Network/stable/2018-02-01/endpointService.json
- Microsoft.Network/stable/2018-02-01/expressRouteCircuit.json
- Microsoft.Network/stable/2018-02-01/expressRouteCrossConnection.json
- Microsoft.Network/stable/2018-02-01/loadBalancer.json
- Microsoft.Network/stable/2018-02-01/network.json
- Microsoft.Network/stable/2018-02-01/networkInterface.json
- Microsoft.Network/stable/2018-02-01/networkSecurityGroup.json
- Microsoft.Network/stable/2018-02-01/networkWatcher.json
- Microsoft.Network/stable/2018-02-01/operation.json
- Microsoft.Network/stable/2018-02-01/publicIpAddress.json
- Microsoft.Network/stable/2018-02-01/routeFilter.json
- Microsoft.Network/stable/2018-02-01/routeTable.json
- Microsoft.Network/stable/2018-02-01/serviceCommunity.json
- Microsoft.Network/stable/2018-02-01/usage.json
- Microsoft.Network/stable/2018-02-01/virtualNetwork.json
- Microsoft.Network/stable/2018-02-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2018-02-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2018-02-01/vmssPublicIpAddress.json
```

### Tag: package-2018-01

These settings apply only when `--tag=package-2018-01` is specified on the command line.

``` yaml $(tag) == 'package-2018-01'
input-file:
- Microsoft.Network/stable/2018-01-01/applicationGateway.json
- Microsoft.Network/stable/2018-01-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2018-01-01/checkDnsAvailability.json
- Microsoft.Network/stable/2018-01-01/endpointService.json
- Microsoft.Network/stable/2018-01-01/expressRouteCircuit.json
- Microsoft.Network/stable/2018-01-01/loadBalancer.json
- Microsoft.Network/stable/2018-01-01/network.json
- Microsoft.Network/stable/2018-01-01/networkInterface.json
- Microsoft.Network/stable/2018-01-01/networkSecurityGroup.json
- Microsoft.Network/stable/2018-01-01/networkWatcher.json
- Microsoft.Network/stable/2018-01-01/operation.json
- Microsoft.Network/stable/2018-01-01/publicIpAddress.json
- Microsoft.Network/stable/2018-01-01/routeFilter.json
- Microsoft.Network/stable/2018-01-01/routeTable.json
- Microsoft.Network/stable/2018-01-01/serviceCommunity.json
- Microsoft.Network/stable/2018-01-01/usage.json
- Microsoft.Network/stable/2018-01-01/virtualNetwork.json
- Microsoft.Network/stable/2018-01-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2018-01-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2018-01-01/vmssPublicIpAddress.json
```

### Tag: package-2018-01-only

These settings apply only when `--tag=package-2018-01` is specified on the command line.

``` yaml $(tag) == 'package-2018-01-only'
input-file:
- Microsoft.Network/stable/2018-01-01/applicationGateway.json
- Microsoft.Network/stable/2018-01-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2018-01-01/checkDnsAvailability.json
- Microsoft.Network/stable/2018-01-01/endpointService.json
- Microsoft.Network/stable/2018-01-01/expressRouteCircuit.json
- Microsoft.Network/stable/2018-01-01/loadBalancer.json
- Microsoft.Network/stable/2018-01-01/network.json
- Microsoft.Network/stable/2018-01-01/networkInterface.json
- Microsoft.Network/stable/2018-01-01/networkSecurityGroup.json
- Microsoft.Network/stable/2018-01-01/networkWatcher.json
- Microsoft.Network/stable/2018-01-01/operation.json
- Microsoft.Network/stable/2018-01-01/publicIpAddress.json
- Microsoft.Network/stable/2018-01-01/routeFilter.json
- Microsoft.Network/stable/2018-01-01/routeTable.json
- Microsoft.Network/stable/2018-01-01/serviceCommunity.json
- Microsoft.Network/stable/2018-01-01/usage.json
- Microsoft.Network/stable/2018-01-01/virtualNetwork.json
- Microsoft.Network/stable/2018-01-01/virtualNetworkGateway.json
```

### Tag: package-2017-11

These settings apply only when `--tag=package-2017-11` is specified on the command line.

``` yaml $(tag) == 'package-2017-11'
input-file:
- Microsoft.Network/stable/2017-11-01/applicationGateway.json
- Microsoft.Network/stable/2017-11-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2017-11-01/checkDnsAvailability.json
- Microsoft.Network/stable/2017-11-01/endpointService.json
- Microsoft.Network/stable/2017-11-01/expressRouteCircuit.json
- Microsoft.Network/stable/2017-11-01/loadBalancer.json
- Microsoft.Network/stable/2017-11-01/network.json
- Microsoft.Network/stable/2017-11-01/networkInterface.json
- Microsoft.Network/stable/2017-11-01/networkSecurityGroup.json
- Microsoft.Network/stable/2017-11-01/networkWatcher.json
- Microsoft.Network/stable/2017-11-01/operation.json
- Microsoft.Network/stable/2017-11-01/publicIpAddress.json
- Microsoft.Network/stable/2017-11-01/routeFilter.json
- Microsoft.Network/stable/2017-11-01/routeTable.json
- Microsoft.Network/stable/2017-11-01/serviceCommunity.json
- Microsoft.Network/stable/2017-11-01/usage.json
- Microsoft.Network/stable/2017-11-01/virtualNetwork.json
- Microsoft.Network/stable/2017-11-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2017-11-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2017-11-01/vmssPublicIpAddress.json
```

### Tag: package-2017-11-only

These settings apply only when `--tag=package-2017-11-only` is specified on the command line.

``` yaml $(tag) == 'package-2017-11-only'
input-file:
- Microsoft.Network/stable/2017-11-01/applicationGateway.json
- Microsoft.Network/stable/2017-11-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2017-11-01/checkDnsAvailability.json
- Microsoft.Network/stable/2017-11-01/endpointService.json
- Microsoft.Network/stable/2017-11-01/expressRouteCircuit.json
- Microsoft.Network/stable/2017-11-01/loadBalancer.json
- Microsoft.Network/stable/2017-11-01/network.json
- Microsoft.Network/stable/2017-11-01/networkInterface.json
- Microsoft.Network/stable/2017-11-01/networkSecurityGroup.json
- Microsoft.Network/stable/2017-11-01/networkWatcher.json
- Microsoft.Network/stable/2017-11-01/operation.json
- Microsoft.Network/stable/2017-11-01/publicIpAddress.json
- Microsoft.Network/stable/2017-11-01/routeFilter.json
- Microsoft.Network/stable/2017-11-01/routeTable.json
- Microsoft.Network/stable/2017-11-01/serviceCommunity.json
- Microsoft.Network/stable/2017-11-01/usage.json
- Microsoft.Network/stable/2017-11-01/virtualNetwork.json
- Microsoft.Network/stable/2017-11-01/virtualNetworkGateway.json
```

### Tag: package-2017-10

These settings apply only when `--tag=package-2017-10` is specified on the command line.

``` yaml $(tag) == 'package-2017-10'
input-file:
- Microsoft.Network/stable/2017-10-01/applicationGateway.json
- Microsoft.Network/stable/2017-10-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2017-10-01/checkDnsAvailability.json
- Microsoft.Network/stable/2017-10-01/endpointService.json
- Microsoft.Network/stable/2017-10-01/expressRouteCircuit.json
- Microsoft.Network/stable/2017-10-01/loadBalancer.json
- Microsoft.Network/stable/2017-10-01/network.json
- Microsoft.Network/stable/2017-10-01/networkInterface.json
- Microsoft.Network/stable/2017-10-01/networkSecurityGroup.json
- Microsoft.Network/stable/2017-10-01/networkWatcher.json
- Microsoft.Network/stable/2017-10-01/operation.json
- Microsoft.Network/stable/2017-10-01/publicIpAddress.json
- Microsoft.Network/stable/2017-10-01/routeFilter.json
- Microsoft.Network/stable/2017-10-01/routeTable.json
- Microsoft.Network/stable/2017-10-01/serviceCommunity.json
- Microsoft.Network/stable/2017-10-01/usage.json
- Microsoft.Network/stable/2017-10-01/virtualNetwork.json
- Microsoft.Network/stable/2017-10-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2017-10-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2017-10-01/vmssPublicIpAddress.json
```

### Tag: package-2017-10-only

These settings apply only when `--tag=package-2017-10-only` is specified on the command line.

``` yaml $(tag) == 'package-2017-10-only'
input-file:
- Microsoft.Network/stable/2017-10-01/applicationGateway.json
- Microsoft.Network/stable/2017-10-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2017-10-01/checkDnsAvailability.json
- Microsoft.Network/stable/2017-10-01/endpointService.json
- Microsoft.Network/stable/2017-10-01/expressRouteCircuit.json
- Microsoft.Network/stable/2017-10-01/loadBalancer.json
- Microsoft.Network/stable/2017-10-01/network.json
- Microsoft.Network/stable/2017-10-01/networkInterface.json
- Microsoft.Network/stable/2017-10-01/networkSecurityGroup.json
- Microsoft.Network/stable/2017-10-01/networkWatcher.json
- Microsoft.Network/stable/2017-10-01/operation.json
- Microsoft.Network/stable/2017-10-01/publicIpAddress.json
- Microsoft.Network/stable/2017-10-01/routeFilter.json
- Microsoft.Network/stable/2017-10-01/routeTable.json
- Microsoft.Network/stable/2017-10-01/serviceCommunity.json
- Microsoft.Network/stable/2017-10-01/usage.json
- Microsoft.Network/stable/2017-10-01/virtualNetwork.json
- Microsoft.Network/stable/2017-10-01/virtualNetworkGateway.json
```

### Tag: package-2017-09

These settings apply only when `--tag=package-2017-09` is specified on the command line.

``` yaml $(tag) == 'package-2017-09'
input-file:
- Microsoft.Network/stable/2017-09-01/applicationGateway.json
- Microsoft.Network/stable/2017-09-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2017-09-01/checkDnsAvailability.json
- Microsoft.Network/stable/2017-09-01/endpointService.json
- Microsoft.Network/stable/2017-09-01/expressRouteCircuit.json
- Microsoft.Network/stable/2017-09-01/loadBalancer.json
- Microsoft.Network/stable/2017-09-01/network.json
- Microsoft.Network/stable/2017-09-01/networkInterface.json
- Microsoft.Network/stable/2017-09-01/networkSecurityGroup.json
- Microsoft.Network/stable/2017-09-01/networkWatcher.json
- Microsoft.Network/stable/2017-09-01/operation.json
- Microsoft.Network/stable/2017-09-01/publicIpAddress.json
- Microsoft.Network/stable/2017-09-01/routeFilter.json
- Microsoft.Network/stable/2017-09-01/routeTable.json
- Microsoft.Network/stable/2017-09-01/serviceCommunity.json
- Microsoft.Network/stable/2017-09-01/usage.json
- Microsoft.Network/stable/2017-09-01/virtualNetwork.json
- Microsoft.Network/stable/2017-09-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2017-09-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2017-09-01/vmssPublicIpAddress.json
```

### Tag: package-2017-09-only

These settings apply only when `--tag=package-2017-09-only` is specified on the command line.

``` yaml $(tag) == 'package-2017-09-only'
input-file:
- Microsoft.Network/stable/2017-09-01/applicationGateway.json
- Microsoft.Network/stable/2017-09-01/applicationSecurityGroup.json
- Microsoft.Network/stable/2017-09-01/checkDnsAvailability.json
- Microsoft.Network/stable/2017-09-01/endpointService.json
- Microsoft.Network/stable/2017-09-01/expressRouteCircuit.json
- Microsoft.Network/stable/2017-09-01/loadBalancer.json
- Microsoft.Network/stable/2017-09-01/network.json
- Microsoft.Network/stable/2017-09-01/networkInterface.json
- Microsoft.Network/stable/2017-09-01/networkSecurityGroup.json
- Microsoft.Network/stable/2017-09-01/networkWatcher.json
- Microsoft.Network/stable/2017-09-01/operation.json
- Microsoft.Network/stable/2017-09-01/publicIpAddress.json
- Microsoft.Network/stable/2017-09-01/routeFilter.json
- Microsoft.Network/stable/2017-09-01/routeTable.json
- Microsoft.Network/stable/2017-09-01/serviceCommunity.json
- Microsoft.Network/stable/2017-09-01/usage.json
- Microsoft.Network/stable/2017-09-01/virtualNetwork.json
- Microsoft.Network/stable/2017-09-01/virtualNetworkGateway.json
```

### Tag: package-2017-08

These settings apply only when `--tag=package-2017-08` is specified on the command line.

``` yaml $(tag) == 'package-2017-08'
input-file:
- Microsoft.Network/stable/2017-08-01/applicationGateway.json
- Microsoft.Network/stable/2017-08-01/checkDnsAvailability.json
- Microsoft.Network/stable/2017-08-01/endpointService.json
- Microsoft.Network/stable/2017-08-01/expressRouteCircuit.json
- Microsoft.Network/stable/2017-08-01/loadBalancer.json
- Microsoft.Network/stable/2017-08-01/network.json
- Microsoft.Network/stable/2017-08-01/networkInterface.json
- Microsoft.Network/stable/2017-08-01/networkSecurityGroup.json
- Microsoft.Network/stable/2017-08-01/networkWatcher.json
- Microsoft.Network/stable/2017-08-01/publicIpAddress.json
- Microsoft.Network/stable/2017-08-01/routeFilter.json
- Microsoft.Network/stable/2017-08-01/routeTable.json
- Microsoft.Network/stable/2017-08-01/serviceCommunity.json
- Microsoft.Network/stable/2017-08-01/usage.json
- Microsoft.Network/stable/2017-08-01/virtualNetwork.json
- Microsoft.Network/stable/2017-08-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2017-08-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2017-08-01/vmssPublicIpAddress.json
```

### Tag: package-2017-06

These settings apply only when `--tag=package-2017-06` is specified on the command line.

``` yaml $(tag) == 'package-2017-06'
input-file:
- Microsoft.Network/stable/2017-06-01/applicationGateway.json
- Microsoft.Network/stable/2017-06-01/checkDnsAvailability.json
- Microsoft.Network/stable/2017-06-01/endpointService.json
- Microsoft.Network/stable/2017-06-01/expressRouteCircuit.json
- Microsoft.Network/stable/2017-06-01/loadBalancer.json
- Microsoft.Network/stable/2017-06-01/network.json
- Microsoft.Network/stable/2017-06-01/networkInterface.json
- Microsoft.Network/stable/2017-06-01/networkSecurityGroup.json
- Microsoft.Network/stable/2017-06-01/networkWatcher.json
- Microsoft.Network/stable/2017-06-01/publicIpAddress.json
- Microsoft.Network/stable/2017-06-01/routeFilter.json
- Microsoft.Network/stable/2017-06-01/routeTable.json
- Microsoft.Network/stable/2017-06-01/serviceCommunity.json
- Microsoft.Network/stable/2017-06-01/usage.json
- Microsoft.Network/stable/2017-06-01/virtualNetwork.json
- Microsoft.Network/stable/2017-06-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2017-06-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2017-06-01/vmssPublicIpAddress.json
```

### Tag: package-2017-03

These settings apply only when `--tag=package-2017-03` is specified on the command line.

``` yaml $(tag) == 'package-2017-03'
input-file:
- Microsoft.Network/stable/2017-03-01/applicationGateway.json
- Microsoft.Network/stable/2017-03-01/checkDnsAvailability.json
- Microsoft.Network/stable/2017-03-01/expressRouteCircuit.json
- Microsoft.Network/stable/2017-03-01/loadBalancer.json
- Microsoft.Network/stable/2017-03-01/network.json
- Microsoft.Network/stable/2017-03-01/networkInterface.json
- Microsoft.Network/stable/2017-03-01/networkSecurityGroup.json
- Microsoft.Network/stable/2017-03-01/networkWatcher.json
- Microsoft.Network/stable/2017-03-01/publicIpAddress.json
- Microsoft.Network/stable/2017-03-01/routeFilter.json
- Microsoft.Network/stable/2017-03-01/routeTable.json
- Microsoft.Network/stable/2017-03-01/serviceCommunity.json
- Microsoft.Network/stable/2017-03-01/usage.json
- Microsoft.Network/stable/2017-03-01/virtualNetwork.json
- Microsoft.Network/stable/2017-03-01/virtualNetworkGateway.json
- Microsoft.Network/stable/2017-03-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2017-03-01/vmssPublicIpAddress.json
```

### Tag: package-2017-03-only

These settings apply only when `--tag=package-2017-03-only` is specified on the command line.

``` yaml $(tag) == 'package-2017-03-only'
input-file:
- Microsoft.Network/stable/2017-03-01/applicationGateway.json
- Microsoft.Network/stable/2017-03-01/checkDnsAvailability.json
- Microsoft.Network/stable/2017-03-01/expressRouteCircuit.json
- Microsoft.Network/stable/2017-03-01/loadBalancer.json
- Microsoft.Network/stable/2017-03-01/network.json
- Microsoft.Network/stable/2017-03-01/networkInterface.json
- Microsoft.Network/stable/2017-03-01/networkSecurityGroup.json
- Microsoft.Network/stable/2017-03-01/networkWatcher.json
- Microsoft.Network/stable/2017-03-01/publicIpAddress.json
- Microsoft.Network/stable/2017-03-01/routeFilter.json
- Microsoft.Network/stable/2017-03-01/routeTable.json
- Microsoft.Network/stable/2017-03-01/serviceCommunity.json
- Microsoft.Network/stable/2017-03-01/usage.json
- Microsoft.Network/stable/2017-03-01/virtualNetwork.json
- Microsoft.Network/stable/2017-03-01/virtualNetworkGateway.json
```

### Tag: package-2017-03-30-only

These settings apply only when `--tag=package-2017-03-30-only` is specified on the command line.

``` yaml $(tag) == 'package-2017-03-30-only'
input-file:
- Microsoft.Network/stable/2017-09-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2017-09-01/vmssPublicIpAddress.json
```

### Tag: package-2016-12

These settings apply only when `--tag=package-2016-12` is specified on the command line.

``` yaml $(tag) == 'package-2016-12'
input-file:
- Microsoft.Network/stable/2016-12-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2016-12-01/applicationGateway.json
- Microsoft.Network/stable/2016-12-01/checkDnsAvailability.json
- Microsoft.Network/stable/2016-12-01/expressRouteCircuit.json
- Microsoft.Network/stable/2016-12-01/loadBalancer.json
- Microsoft.Network/stable/2016-12-01/network.json
- Microsoft.Network/stable/2016-12-01/networkInterface.json
- Microsoft.Network/stable/2016-12-01/networkSecurityGroup.json
- Microsoft.Network/stable/2016-12-01/networkWatcher.json
- Microsoft.Network/stable/2016-12-01/publicIpAddress.json
- Microsoft.Network/stable/2016-12-01/routeFilter.json
- Microsoft.Network/stable/2016-12-01/routeTable.json
- Microsoft.Network/stable/2016-12-01/serviceCommunity.json
- Microsoft.Network/stable/2016-12-01/usage.json
- Microsoft.Network/stable/2016-12-01/virtualNetwork.json
- Microsoft.Network/stable/2016-12-01/virtualNetworkGateway.json
```

### Tag: package-2016-09

These settings apply only when `--tag=package-2016-09` is specified on the command line.

``` yaml $(tag) == 'package-2016-09'
input-file:
- Microsoft.Network/stable/2016-09-01/vmssNetworkInterface.json
- Microsoft.Network/stable/2016-09-01/applicationGateway.json
- Microsoft.Network/stable/2016-09-01/checkDnsAvailability.json
- Microsoft.Network/stable/2016-09-01/expressRouteCircuit.json
- Microsoft.Network/stable/2016-09-01/loadBalancer.json
- Microsoft.Network/stable/2016-09-01/network.json
- Microsoft.Network/stable/2016-09-01/networkInterface.json
- Microsoft.Network/stable/2016-09-01/networkSecurityGroup.json
- Microsoft.Network/stable/2016-09-01/networkWatcher.json
- Microsoft.Network/stable/2016-09-01/publicIpAddress.json
- Microsoft.Network/stable/2016-09-01/routeTable.json
- Microsoft.Network/stable/2016-09-01/usage.json
- Microsoft.Network/stable/2016-09-01/virtualNetwork.json
- Microsoft.Network/stable/2016-09-01/virtualNetworkGateway.json
```

### Tag: package-2016-06

These settings apply only when `--tag=package-2016-06` is specified on the command line.

``` yaml $(tag) == 'package-2016-06'
input-file:
- Microsoft.Network/stable/2016-06-01/network.json
```

### Tag: package-2016-03

These settings apply only when `--tag=package-2016-03` is specified on the command line.

``` yaml $(tag) == 'package-2016-03'
input-file:
- Microsoft.Network/stable/2016-03-30/network.json
```

### Tag: package-2015-06split

These settings apply only when `--tag=package-2015-06split` is specified on the command line.

``` yaml $(tag) == 'package-2015-06split'
input-file:
- Microsoft.Network/stable/2015-06-15/applicationGateway.json
- Microsoft.Network/stable/2015-06-15/checkDnsAvailability.json
- Microsoft.Network/stable/2015-06-15/expressRouteCircuit.json
- Microsoft.Network/stable/2015-06-15/loadBalancer.json
- Microsoft.Network/stable/2015-06-15/network.json
- Microsoft.Network/stable/2015-06-15/networkInterface.json
- Microsoft.Network/stable/2015-06-15/networkSecurityGroup.json
- Microsoft.Network/stable/2015-06-15/publicIpAddress.json
- Microsoft.Network/stable/2015-06-15/routeTable.json
- Microsoft.Network/stable/2015-06-15/usage.json
- Microsoft.Network/stable/2015-06-15/virtualNetwork.json
- Microsoft.Network/stable/2015-06-15/virtualNetworkGateway.json
- Microsoft.Network/stable/2015-06-15/vmssNetworkInterface.json
```

### Tag: package-2015-05-preview

These settings apply only when `--tag=package-2015-05-preview` is specified on the command line.

``` yaml $(tag) == 'package-2015-05-preview'
input-file:
- Microsoft.Network/preview/2015-05-01-preview/network.json
```

### Tag: profile-hybrid-2020-09-01

These settings apply only when `--tag=profile-hybrid-2020-09-01` is specified on the command line.

``` yaml $(tag) == 'profile-hybrid-2020-09-01'
input-file:
  - Microsoft.Network/stable/2018-11-01/virtualNetworkGateway.json
  - Microsoft.Network/stable/2018-11-01/loadBalancer.json
  - Microsoft.Network/stable/2018-11-01/network.json
  - Microsoft.Network/stable/2018-11-01/networkInterface.json
  - Microsoft.Network/stable/2018-11-01/networkSecurityGroup.json
  - Microsoft.Network/stable/2018-11-01/operation.json
  - Microsoft.Network/stable/2018-11-01/publicIpAddress.json
  - Microsoft.Network/stable/2018-11-01/routeTable.json
  - Microsoft.Network/stable/2018-11-01/virtualNetwork.json
```

## Suppression

``` yaml
directive:
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkManagerConnectivityConfiguration.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkManagerSecurityUserConfiguration.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkManagerSecurityAdminConfiguration.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkManager.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkManagerGroup.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkManagerEffectiveConfiguration.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkManagerActiveConfiguration.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: DeleteResponseCodes
    from: networkManagerRoutingConfiguration.json
    reason: support response code 200 for delete operations 
  - suppress: DeleteResponseCodes
    from: networkManagerSecurityUserConfiguration.json
    reason: support response code 200 for delete operations
  - suppress: BodyTopLevelProperties
    from: networkManagerSecurityUserConfiguration.json
    reason: This is a false alarm for a list response. Arm documentation states 'Collection Get calls must only have "value" and "nextLink" as top level properties in its model.'
  - suppress: BodyTopLevelProperties
    from: networkManagerRoutingConfiguration.json
    reason: This is a false alarm for a list response. Arm documentation states 'Collection Get calls must only have "value" and "nextLink" as top level properties in its model.'
  - suppress: SystemDataDefinitionsCommonTypes
    from: networkManagerSecurityUserConfiguration.json
    reason: All microsoft.network specs reference a seperate systemData defined in networking file. If we use the common type, it causes duplicate schema error in dotnet sdk generation.
  - suppress: SystemDataDefinitionsCommonTypes
    from: networkManagerRoutingConfiguration.json
    reason: All microsoft.network specs reference a seperate systemData defined in networking file. If we use the common type, it causes duplicate schema error in dotnet sdk generation.
  - suppress: RequiredPropertiesMissingInResourceModel
    from: applicationGateway.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: applicationSecurityGroup.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: azureFirewall.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: azureFirewallFqdnTag.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: bastionHost.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: checkDnsAvailability.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: customIpPrefix.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: ddosCustomPolicy.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: ddosProtectionPlan.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: endpointService.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: expressRouteCircuit.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: expressRouteCrossConnection.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: expressRouteGateway.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: expressRoutePort.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: firewallPolicy.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: ipGroups.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: loadBalancer.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: masterCustomIpPrefix.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: natGateway.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkInterface.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkSecurityGroup.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkVirtualAppliance.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkWatcher.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: operation.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: publicIpAddress.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: publicIpPrefix.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: routeFilter.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: routeTable.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: securityPartnerProvider.json
    reason: name, id and type properties are inherited from the upper level  
  - suppress: RequiredPropertiesMissingInResourceModel
    from: serviceCommunity.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: AvoidNestedProperties
    where: $.definitions.ServiceTagInformation.properties.properties
    reason: No x-ms-client-flatten by design
  - suppress: RequiredPropertiesMissingInResourceModel
    from: usage.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: virtualNetwork.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: serviceEndpointPolicy.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: virtualNetworkTap.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: virtualRouter.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: virtualNetworkGateway.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: privateEndpoint.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: privateLinkService.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkProfile.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: availableDelegations.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: TrackedResourceListByImmediateParent
    reason: Another list APIs naming approach is used over the specs
  - suppress: EnumInsteadOfBoolean
    reason: Booleans are used by networking APIs
  - suppress: GetInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/providers/Microsoft.Network/locations/{location}/CheckDnsNameAvailability"].get.operationId
    reason: Customized verb is used for API
  - suppress: GetInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/CheckIPAddressAvailability"].get.operationId
    reason: Customized verb is used for API
  - suppress: PutInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ExpressRoutePorts/{expressRoutePortName}/links/{linkName}"].put.operationId
    reason: Child resource is auto-created when top-level resource is created.
  - suppress: PutInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/connections/{virtualNetworkGatewayConnectionName}/sharedkey"].put.operationId
    reason: Customized verb is used for API
  - suppress: PostOperationIdContainsUrlVerb
    from: networkWatcher.json
    reason: Customized verbs are used for API
  - suppress: PostOperationIdContainsUrlVerb
    from: expressRouteCircuit.json
    reason: Customized verbs are used for API
  - suppress: PostOperationIdContainsUrlVerb
    from: expressRouteCrossConnection.json
    reason: Customized verbs are used for API
  - suppress: OperationIdNounVerb
    from: vmssPublicIpAddress.json
    reason: VMSS specs have custom naming
  - suppress: OperationIdNounVerb
    from: vmssNetworkInterface.json
    reason: VMSS specs have custom naming
  - suppress: BodyTopLevelProperties
    from: virtualNetworkGateway.json
    reason: shipped. fixing this causes breaking change in resource
  - suppress: RequiredPropertiesMissingInResourceModel
    from: webapplicationfirewall.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: PostOperationIdContainsUrlVerb
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationGateways/{applicationGatewayName}/getBackendHealthOnDemand"].post.operationId
    reason: Customized verb is used for API
  - suppress: PostOperationIdContainsUrlVerb
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualWans/{virtualWANName}/vpnConfiguration"].post.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationGateways/{applicationGatewayName}/backendhealth"].post.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkInterfaces/{networkInterfaceName}/effectiveRouteTable"].post.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/securityGroupView"].post.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/connectionMonitors/{connectionMonitorName}/query"].post.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/networkConfigurationDiagnostic"].post.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/CheckIPAddressAvailability"].get.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}/getBgpPeerStatus"].post.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}/getLearnedRoutes"].post.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}/getAdvertisedRoutes"].post.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworkGateways/{virtualNetworkGatewayName}/getVpnClientConnectionHealth"].post.operationId
    reason: Customized verb is used for API
  - suppress: ListInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualWans/{virtualWANName}/supportedSecurityProviders"].get.operationId
    reason: Customized verb is used for API
  - suppress: GetInOperationName
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualWans/{virtualWANName}/supportedSecurityProviders"].get.operationId
    reason: Customized verb is used for API
  - suppress: RequiredPropertiesMissingInResourceModel
    from: ipAllocation.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: dscpConfiguration.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: R3023
    from: networkManagerGroupMembership.json
    reason: Extension Resource, not new RP.
  - suppress: XmsIdentifierValidation
    from: networkManagerGroupMembership.json
    reason: By design, no id is needed for groupmembership resources.
  - suppress: ResourceNameRestriction
    from: virtualNetworkGateway.json
    reason: The resource name parameter 'virtualNetworkGatewayName' is not defined with a 'pattern' restriction. Suppress it to avoid breaking change because it is referenced by all Virtual Network Gateway APIs.
  - suppress: ParametersInPost
    from: virtualNetworkGateway.json
    reason: There are existing APIs in the file using the same format. Suppress it to avoid breaking change because it is referenced by all Virtual Network Gateway APIs.
  - suppress: AvoidAdditionalProperties
    from: virtualNetworkGateway.json
    reason: We are using Dictionaries in the NRP APIs which are already rolled out. Suppress it since this is used by the Gateway Resiliency APIs.
    where:
    - $.definitions.GatewayRouteSet.properties.details
    - $.definitions.GatewayRouteSetsInformation.properties.circuitsMetadataMap
```

---

# Code Generation

## Swagger to SDK

This section describes what SDK should be generated by the automatic system.
This is not used by Autorest itself.

``` yaml $(swagger-to-sdk)
swagger-to-sdk:
  - repo: azure-sdk-for-net
  - repo: azure-sdk-for-python
  - repo: azure-sdk-for-java
  - repo: azure-sdk-for-go
  - repo: azure-sdk-for-js
  - repo: azure-sdk-for-node
  - repo: azure-sdk-for-ruby
    after_scripts:
      - bundle install && rake arm:regen_all_profiles['azure_mgmt_network']
  - repo: azure-resource-manager-schemas
  - repo: azure-powershell
```

## Suppression

``` yaml
directive:
  - suppress: RequiredPropertiesMissingInResourceModel
    from: virtualWan.json
    reason: name, id and type properties are inherited from the upper level
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkwatcher.json
    where: $.definitions.PacketCaptureResult
    reason: Packet capture is a non tracked child resource. It has 'name' and 'id' but does not have a 'type'
  - suppress: RequiredPropertiesMissingInResourceModel
    from: networkwatcher.json
    where: $.definitions.NetworkWatcher
    reason: Network watcher has reference on resource in network.json which contain 'name, 'id' and 'type'
  - suppress: DefinitionsPropertiesNamesCamelCase
    from: networkwatcher.json
    where: $.definitions.ProtocolConfiguration.properties.HTTPConfiguration
    reason: Accidentally shipped with wrong casing - however fixing the casing is introducing a breaking change which is worse than living with the naming violation
  - suppress: DefinitionsPropertiesNamesCamelCase
    from: networkwatcher.json
    where: $.definitions.ConnectionMonitorHttpConfiguration.properties.preferHTTPS
    reason: Accidentally shipped with wrong casing - however fixing the casing is introducing a breaking change which is worse than living with the naming violation
  - suppress: RequiredPropertiesMissingInResourceModel
    from: ipAllocation.json
    reason: name, id and type properties are inherited from the upper level

suppressions:
  - code: ResourceNameRestriction
    from: bastionhost.json
    reason: The resource name parameter 'bastionHostName' is not defined with a 'pattern' restriction. Suppress it for now to avoid breaking change because it is referenced by all Bastion APIs. 
  - code: LroErrorContent
    reason: CloudError does not follow required error schema. Suppress it for now to avoid breaking change because it is referenced by many files.
  - code: ResourceNameRestriction
    from: virtualWan.json
    reason: The resource name parameter 'gatewayName', 'connectionName', 'linkConnectionName' is not defined with a 'pattern' restriction. Suppress it for now to avoid breaking change because it is referenced by all vpn link connection APIs.
    where:
    - $.paths.["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/vpnGateways/{gatewayName}/vpnConnections/{connectionName}/vpnLinkConnections/{linkConnectionName}/sharedKeys"]
    - $.paths.["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/vpnGateways/{gatewayName}/vpnConnections/{connectionName}/vpnLinkConnections/{linkConnectionName}/sharedKeys/default"]
    - $.paths.["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/vpnGateways/{gatewayName}/vpnConnections/{connectionName}/vpnLinkConnections/{linkConnectionName}/sharedKeys/default/listSharedKey"]
  - code: BodyTopLevelProperties
    from: virtualWan.json
    reason: False alarm.
    where:
    - $.definitions.ConnectionSharedKeyResultList
```

## Go

See configuration in [readme.go.md](./readme.go.md)

## Java

See configuration in [readme.java.md](./readme.java.md)