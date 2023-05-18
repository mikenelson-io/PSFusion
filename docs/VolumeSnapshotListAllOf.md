# VolumeSnapshotListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**VolumeSnapshot[]**](VolumeSnapshot.md) | A JSON array of Volume Snapshots | 

## Examples

- Prepare the resource
```powershell
$VolumeSnapshotListAllOf = Initialize-PSFusionVolumeSnapshotListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$VolumeSnapshotListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

