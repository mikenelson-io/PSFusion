# Snapshot
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Tenant** | [**TenantRef**](TenantRef.md) |  | 
**TenantSpace** | [**TenantSpaceRef**](TenantSpaceRef.md) |  | 
**VolumeSnapshotsLink** | **String** | The URI of volume snapshots in the snapshot. | 
**ProtectionPolicy** | [**ProtectionPolicyRef**](ProtectionPolicyRef.md) |  | [optional] 
**TimeRemaining** | **Int64** | The amount of time left until the destroyed snapshot is permanently eradicated. Only valid when destroyed is true. Measured in milliseconds. Before the time_remaining period has elapsed, the destroyed snapshot can be recovered by setting destroyed&#x3D;false. An expired but not yet eradicated snapshot has destroyed&#x3D;true and time_remaining&#x3D;0. | [optional] 
**Destroyed** | **Boolean** | True if the snapshot has been destroyed and is pending eradication. The time_remaining value displays the amount of time left until the destroyed snapshot is permanently eradicated. Before the time_remaining period has elapsed, the destroyed snapshot can be recovered by setting destroyed&#x3D;false. Once the time_remaining period has elapsed, the snapshot is permanently eradicated and can no longer be recovered. | [optional] 

## Examples

- Prepare the resource
```powershell
$Snapshot = Initialize-PSFusionSnapshot  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -Tenant null `
 -TenantSpace null `
 -VolumeSnapshotsLink null `
 -ProtectionPolicy null `
 -TimeRemaining null `
 -Destroyed null
```

- Convert the resource to JSON
```powershell
$Snapshot | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

