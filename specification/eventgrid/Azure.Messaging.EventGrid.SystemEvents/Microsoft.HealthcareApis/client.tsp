import "@azure-tools/typespec-client-generator-core";

using Azure.ClientGenerator.Core;
//Models
@@usage(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceType,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceType,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceCreatedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceCreatedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceUpdatedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceUpdatedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceDeletedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceDeletedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.HealthcareDicomImageCreatedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.HealthcareDicomImageCreatedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.HealthcareDicomImageDeletedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.HealthcareDicomImageDeletedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.HealthcareDicomImageUpdatedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.HealthcareDicomImageUpdatedEventData,
  Access.public
);
//Enums
@@usage(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceType,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceType,
  Access.public
);

//useSystemTextJsonConverter decorators
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceCreatedEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceUpdatedEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.HealthcareFhirResourceDeletedEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.HealthcareDicomImageCreatedEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.HealthcareDicomImageDeletedEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.HealthcareDicomImageUpdatedEventData,
  "csharp"
);
