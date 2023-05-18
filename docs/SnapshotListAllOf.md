# SnapshotListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**Snapshot[]**](Snapshot.md) | A JSON array of Snapshots | 

## Examples

- Prepare the resource
```powershell
$SnapshotListAllOf = Initialize-PSFusionSnapshotListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$SnapshotListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

