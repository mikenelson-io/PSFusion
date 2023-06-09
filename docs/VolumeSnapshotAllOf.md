# VolumeSnapshotAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SerialNumber** | **String** | A serial number generated by the system when the volume snapshot is created. The serial number is unique across all arrays. | 
**VolumeSerialNumber** | **String** | The serial number of the volume this volume snapshot is created from. | 
**CreatedAt** | **Int64** | The volume snapshot creation time. Measured in milliseconds since the UNIX epoch. | 
**ConsistencyId** | **String** | Volume snapshots with the same consistency_id are crash consistency. | 
**Destroyed** | **Boolean** | True if the volume snapshot has been destroyed and is pending eradication. The time_remaining value displays the amount of time left until the destroyed volume snapshot is permanently eradicated. | [optional] 
**TimeRemaining** | **Int64** | The amount of time left until the destroyed volume snapshot is permanently eradicated. Only valid when destroyed is true. Measured in milliseconds. An expired but not yet eradicated volume snapshot has destroyed&#x3D;true and time_remaining&#x3D;0. | [optional] 
**Size** | **Int64** | The virtual size of the volume snapshot. Measured in bytes. | 
**Tenant** | [**TenantRef**](TenantRef.md) |  | 
**TenantSpace** | [**TenantSpaceRef**](TenantSpaceRef.md) |  | 
**Snapshot** | [**SnapshotRef**](SnapshotRef.md) |  | 
**Volume** | [**VolumeRef**](VolumeRef.md) |  | [optional] 
**ProtectionPolicy** | [**ProtectionPolicyRef**](ProtectionPolicyRef.md) |  | [optional] 
**PlacementGroup** | [**PlacementGroupRef**](PlacementGroupRef.md) |  | 

## Examples

- Prepare the resource
```powershell
$VolumeSnapshotAllOf = Initialize-PSFusionVolumeSnapshotAllOf  -SerialNumber null `
 -VolumeSerialNumber null `
 -CreatedAt null `
 -ConsistencyId null `
 -Destroyed null `
 -TimeRemaining null `
 -Size null `
 -Tenant null `
 -TenantSpace null `
 -Snapshot null `
 -Volume null `
 -ProtectionPolicy null `
 -PlacementGroup null
```

- Convert the resource to JSON
```powershell
$VolumeSnapshotAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

