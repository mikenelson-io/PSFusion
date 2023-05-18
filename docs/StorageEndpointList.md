# StorageEndpointList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int32** | count of items in the list | 
**MoreItemsRemaining** | **Boolean** | True if not all items in the search were returned in the provided array. | [optional] 
**Items** | [**StorageEndpoint[]**](StorageEndpoint.md) | A JSON array of Storage Endpoints | 

## Examples

- Prepare the resource
```powershell
$StorageEndpointList = Initialize-PSFusionStorageEndpointList  -Count null `
 -MoreItemsRemaining null `
 -Items null
```

- Convert the resource to JSON
```powershell
$StorageEndpointList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

