# VolumePost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Size** | **Int64** | The size of the volume to provision | [optional] 
**StorageClass** | **String** | The name of the Storage Class | 
**PlacementGroup** | **String** | The name of the Placement Group | 
**ProtectionPolicy** | **String** | The name of the Protection Policy | [optional] 
**SourceLink** | **String** | The link to copy data from. Supported sources - VolumeSnapshot, Volume | [optional] 

## Examples

- Prepare the resource
```powershell
$VolumePost = Initialize-PSFusionVolumePost  -Name null `
 -DisplayName null `
 -Size null `
 -StorageClass null `
 -PlacementGroup null `
 -ProtectionPolicy null `
 -SourceLink null
```

- Convert the resource to JSON
```powershell
$VolumePost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

