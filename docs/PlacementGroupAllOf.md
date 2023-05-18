# PlacementGroupAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
$PlacementGroupAllOf = Initialize-PSFusionPlacementGroupAllOf  -Tenant null `
 -TenantSpace null `
 -PlacementEngine null `
 -AvailabilityZone null `
 -Protocols null `
 -StorageService null `
 -Array null
```

- Convert the resource to JSON
```powershell
$PlacementGroupAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

