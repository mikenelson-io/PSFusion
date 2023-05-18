# StorageEndpointListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**StorageEndpoint[]**](StorageEndpoint.md) | A JSON array of Storage Endpoints | 

## Examples

- Prepare the resource
```powershell
$StorageEndpointListAllOf = Initialize-PSFusionStorageEndpointListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$StorageEndpointListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

