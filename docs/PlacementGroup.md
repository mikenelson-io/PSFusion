# PlacementGroup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Tenant** | [**TenantRef**](TenantRef.md) |  | [optional] 
**TenantSpace** | [**TenantSpaceRef**](TenantSpaceRef.md) |  | 
**PlacementEngine** | [**PlacementEngine**](PlacementEngine.md) |  | [optional] 
**AvailabilityZone** | [**AvailabilityZoneRef**](AvailabilityZoneRef.md) |  | 
**Protocols** | [**Target**](Target.md) |  | [optional] 
**StorageService** | [**StorageServiceRef**](StorageServiceRef.md) |  | [optional] 
**Array** | [**ArrayRef**](ArrayRef.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PlacementGroup = Initialize-PSFusionPlacementGroup  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -Tenant null `
 -TenantSpace null `
 -PlacementEngine null `
 -AvailabilityZone null `
 -Protocols null `
 -StorageService null `
 -Array null
```

- Convert the resource to JSON
```powershell
$PlacementGroup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

