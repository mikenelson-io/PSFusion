# VolumeListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**Volume[]**](Volume.md) | A JSON array of Volumes | 

## Examples

- Prepare the resource
```powershell
$VolumeListAllOf = Initialize-PSFusionVolumeListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$VolumeListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

