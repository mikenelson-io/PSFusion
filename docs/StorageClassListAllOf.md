# StorageClassListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**StorageClass[]**](StorageClass.md) | A JSON array of Storage Classes | 

## Examples

- Prepare the resource
```powershell
$StorageClassListAllOf = Initialize-PSFusionStorageClassListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$StorageClassListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

