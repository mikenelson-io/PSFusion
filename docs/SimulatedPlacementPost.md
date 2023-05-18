# SimulatedPlacementPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailabilityZone** | **String** | If Placement Group would have been created, which Availability Zone would it be created in | 
**Region** | **String** | If Placement Group would have been created, which Region would it be created in | 
**StorageService** | **String** | If Placement Group would have been created, which Storage Service would it be assigned | 

## Examples

- Prepare the resource
```powershell
$SimulatedPlacementPost = Initialize-PSFusionSimulatedPlacementPost  -AvailabilityZone null `
 -Region null `
 -StorageService null
```

- Convert the resource to JSON
```powershell
$SimulatedPlacementPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

