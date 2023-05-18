# VolumeAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Size** | **Int64** | The size of the volume | [optional] 
**Tenant** | [**TenantRef**](TenantRef.md) |  | 
**TenantSpace** | [**TenantSpaceRef**](TenantSpaceRef.md) |  | 
**StorageClass** | [**StorageClassRef**](StorageClassRef.md) |  | 
**ProtectionPolicy** | [**ProtectionPolicyRef**](ProtectionPolicyRef.md) |  | [optional] 
**PlacementGroup** | [**PlacementGroupRef**](PlacementGroupRef.md) |  | [optional] 
**Array** | [**ArrayRef**](ArrayRef.md) |  | [optional] 
**CreatedAt** | **Int64** |  | [optional] 
**SourceVolumeSnapshot** | [**VolumeSnapshotRef**](VolumeSnapshotRef.md) |  | [optional] 
**Source** | [**ResourceReference**](ResourceReference.md) |  | [optional] 
**HostAccessPolicies** | [**HostAccessPolicyRef[]**](HostAccessPolicyRef.md) |  | [optional] 
**SerialNumber** | **String** | Volume Serial Numbers, aka LUN Serial Numbers. This will be visible to initiators that connect to the volume. | 
**Target** | [**Target**](Target.md) |  | [optional] 
**TimeRemaining** | **Int64** | The amount of time left until the destroyed volume is permanently eradicated. Only valid when destroyed is true. Measured in milliseconds. Before the time_remaining period has elapsed, the destroyed volume can be recovered by setting destroyed&#x3D;false. An expired but not yet eradicated volume has destroyed&#x3D;true and time_remaining&#x3D;0. | [optional] 
**Destroyed** | **Boolean** | True if the volume has been destroyed and is pending eradication. The time_remaining value displays the amount of time left until the destroyed volume is permanently eradicated. Before the time_remaining period has elapsed, the destroyed volume can be recovered by setting destroyed&#x3D;false. Once the time_remaining period has elapsed, the volume is permanently eradicated and can no longer be recovered. | [optional] 

## Examples

- Prepare the resource
```powershell
$VolumeAllOf = Initialize-PSFusionVolumeAllOf  -Size null `
 -Tenant null `
 -TenantSpace null `
 -StorageClass null `
 -ProtectionPolicy null `
 -PlacementGroup null `
 -Array null `
 -CreatedAt null `
 -SourceVolumeSnapshot null `
 -Source null `
 -HostAccessPolicies null `
 -SerialNumber null `
 -Target null `
 -TimeRemaining null `
 -Destroyed null
```

- Convert the resource to JSON
```powershell
$VolumeAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

