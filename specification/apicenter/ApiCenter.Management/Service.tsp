import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "@typespec/rest";
import "./models.tsp";

using TypeSpec.Rest;
using Azure.ResourceManager;
using TypeSpec.Http;
using TypeSpec.Versioning;

namespace Microsoft.ApiCenter;
@doc("The service entity.")
model Service is TrackedResource<ServiceProperties> {
  @doc("The name of Azure API Center service.")
  @maxLength(90)
  @minLength(1)
  @pattern("^[a-zA-Z0-9-]{3,90}$")
  @path
  @key("serviceName")
  @segment("services")
  name: string;

  ...ManagedServiceIdentityProperty;
}

@armResourceOperations
interface Services {
  @doc("Returns details of the service.")
  get is Azure.ResourceManager.ArmResourceRead<Service>;
  @doc("Creates new or updates existing API.")
  createOrUpdate is Azure.ResourceManager.ArmResourceCreateOrReplaceSync<Service>;
  @doc("Updates existing service.")
  update is ArmCustomPatchSync<
    Service,
    Azure.ResourceManager.Foundations.ResourceUpdateModel<
      Service,
      ServiceProperties
    >
  >;
  @doc("Deletes specified service.")
  delete is ArmResourceDeleteSync<Service>;
  @doc("Returns a collection of services within the resource group.")
  listByResourceGroup is Azure.ResourceManager.ArmResourceListByParent<Service>;
  @doc("Lists services within an Azure subscription.")
  listBySubscription is ArmListBySubscription<Service>;
  @doc("Exports the effective metadata schema.")
  exportMetadataSchema is ArmResourceActionAsync<
    Service,
    MetadataSchemaExportRequest,
    MetadataSchemaExportResult
  >;
}
