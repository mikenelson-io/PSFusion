# StorageServiceListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**StorageService[]**](StorageService.md) | A JSON array of Storage Services | 

## Examples

- Prepare the resource
```powershell
$StorageServiceListAllOf = Initialize-PSFusionStorageServiceListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$StorageServiceListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

