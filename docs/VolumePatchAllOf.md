# VolumePatchAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceVolumeSnapshotLink** | [**NullableString**](NullableString.md) |  | [optional] 
**SourceLink** | [**NullableString**](NullableString.md) |  | [optional] 
**Size** | [**NullableSize**](NullableSize.md) |  | [optional] 
**StorageClass** | [**NullableString**](NullableString.md) |  | [optional] 
**PlacementGroup** | [**NullableString**](NullableString.md) |  | [optional] 
**ProtectionPolicy** | [**NullableString**](NullableString.md) |  | [optional] 
**HostAccessPolicies** | [**NullableString**](NullableString.md) |  | [optional] 
**Destroyed** | [**NullableBoolean**](NullableBoolean.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VolumePatchAllOf = Initialize-PSFusionVolumePatchAllOf  -SourceVolumeSnapshotLink null `
 -SourceLink null `
 -Size null `
 -StorageClass null `
 -PlacementGroup null `
 -ProtectionPolicy null `
 -HostAccessPolicies null `
 -Destroyed null
```

- Convert the resource to JSON
```powershell
$VolumePatchAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

