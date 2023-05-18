# SnapshotPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Volumes** | **String[]** | List of volume names to have snapshots taken of. | [optional] 
**PlacementGroup** | **String** | Placement Group to take snapshot of. | [optional] 

## Examples

- Prepare the resource
```powershell
$SnapshotPost = Initialize-PSFusionSnapshotPost  -Name null `
 -DisplayName null `
 -Volumes null `
 -PlacementGroup null
```

- Convert the resource to JSON
```powershell
$SnapshotPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

