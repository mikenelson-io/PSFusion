# StorageEndpointPostAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EndpointType** | **String** | The endpoint type. | 
**Iscsi** | [**StorageEndpointIscsiPost**](StorageEndpointIscsiPost.md) |  | [optional] 
**CbsAzureIscsi** | [**StorageEndpointCbsAzureIscsiPost**](StorageEndpointCbsAzureIscsiPost.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageEndpointPostAllOf = Initialize-PSFusionStorageEndpointPostAllOf  -EndpointType null `
 -Iscsi null `
 -CbsAzureIscsi null
```

- Convert the resource to JSON
```powershell
$StorageEndpointPostAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

