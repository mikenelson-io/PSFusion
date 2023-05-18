# StorageEndpointIscsi
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DiscoveryInterfaces** | [**StorageEndpointIscsiDiscoveryInterface[]**](StorageEndpointIscsiDiscoveryInterface.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageEndpointIscsi = Initialize-PSFusionStorageEndpointIscsi  -DiscoveryInterfaces null
```

- Convert the resource to JSON
```powershell
$StorageEndpointIscsi | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

