# Space
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | [**ResourceReference**](ResourceReference.md) |  | [optional] 
**TotalPhysicalSpace** | **Int64** | Total physical space occupied by system, shared space, volume, and snapshot data. Measured in bytes. | [optional] 
**UniqueSpace** | **Int64** | The unique physical space occupied by customer data. Unique physical space does not include shared space, snapshots, and internal array metadata. Measured in bytes. | [optional] 
**SnapshotSpace** | **Int64** | The physical space occupied by data unique to one or more snapshots. Measured in bytes. | [optional] 

## Examples

- Prepare the resource
```powershell
$Space = Initialize-PSFusionSpace  -Resource null `
 -TotalPhysicalSpace null `
 -UniqueSpace null `
 -SnapshotSpace null
```

- Convert the resource to JSON
```powershell
$Space | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

