# StorageEndpointIscsiPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DiscoveryInterfaces** | [**StorageEndpointIscsiDiscoveryInterfacePost[]**](StorageEndpointIscsiDiscoveryInterfacePost.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageEndpointIscsiPost = Initialize-PSFusionStorageEndpointIscsiPost  -DiscoveryInterfaces null
```

- Convert the resource to JSON
```powershell
$StorageEndpointIscsiPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

