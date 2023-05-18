# TenantSpaceAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tenant** | [**TenantRef**](TenantRef.md) |  | [optional] 
**VolumesLink** | **String** |  | [optional] 
**SnapshotsLink** | **String** |  | [optional] 
**PlacementGroupsLink** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TenantSpaceAllOf = Initialize-PSFusionTenantSpaceAllOf  -Tenant null `
 -VolumesLink null `
 -SnapshotsLink null `
 -PlacementGroupsLink null
```

- Convert the resource to JSON
```powershell
$TenantSpaceAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

