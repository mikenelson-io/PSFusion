# SimulatedPlacement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailabilityZone** | [**AvailabilityZoneRef**](AvailabilityZoneRef.md) |  | [optional] 
**StorageService** | [**StorageServiceRef**](StorageServiceRef.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SimulatedPlacement = Initialize-PSFusionSimulatedPlacement  -AvailabilityZone null `
 -StorageService null
```

- Convert the resource to JSON
```powershell
$SimulatedPlacement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

