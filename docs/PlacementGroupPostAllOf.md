# PlacementGroupPostAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailabilityZone** | **String** | The name of the Availability Zone that this PG should be created. | 
**Region** | **String** | The name of the Region associated with the mentioned Availability Zone. | 
**StorageService** | **String** | The name of the parent Storage Service | 

## Examples

- Prepare the resource
```powershell
$PlacementGroupPostAllOf = Initialize-PSFusionPlacementGroupPostAllOf  -AvailabilityZone null `
 -Region null `
 -StorageService null
```

- Convert the resource to JSON
```powershell
$PlacementGroupPostAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

