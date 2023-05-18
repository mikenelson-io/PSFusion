# StorageEndpointPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**EndpointType** | **String** | The endpoint type. | 
**Iscsi** | [**StorageEndpointIscsiPost**](StorageEndpointIscsiPost.md) |  | [optional] 
**CbsAzureIscsi** | [**StorageEndpointCbsAzureIscsiPost**](StorageEndpointCbsAzureIscsiPost.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageEndpointPost = Initialize-PSFusionStorageEndpointPost  -Name null `
 -DisplayName null `
 -EndpointType null `
 -Iscsi null `
 -CbsAzureIscsi null
```

- Convert the resource to JSON
```powershell
$StorageEndpointPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

