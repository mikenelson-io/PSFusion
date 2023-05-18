# PlacementGroupPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**AvailabilityZone** | **String** | The name of the Availability Zone that this PG should be created. | 
**Region** | **String** | The name of the Region associated with the mentioned Availability Zone. | 
**StorageService** | **String** | The name of the parent Storage Service | 

## Examples

- Prepare the resource
```powershell
$PlacementGroupPost = Initialize-PSFusionPlacementGroupPost  -Name null `
 -DisplayName null `
 -AvailabilityZone null `
 -Region null `
 -StorageService null
```

- Convert the resource to JSON
```powershell
$PlacementGroupPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

