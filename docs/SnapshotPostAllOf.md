# SnapshotPostAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Volumes** | **String[]** | List of volume names to have snapshots taken of. | [optional] 
**PlacementGroup** | **String** | Placement Group to take snapshot of. | [optional] 

## Examples

- Prepare the resource
```powershell
$SnapshotPostAllOf = Initialize-PSFusionSnapshotPostAllOf  -Volumes null `
 -PlacementGroup null
```

- Convert the resource to JSON
```powershell
$SnapshotPostAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

