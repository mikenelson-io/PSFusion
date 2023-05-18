# StorageEndpointIscsiDiscoveryInterfacePost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** | The IPv4 address for this interface. | 
**Gateway** | **String** | The IPv4 address of the gateway through which this interface will communicate with the network. | [optional] 
**NetworkInterfaceGroups** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageEndpointIscsiDiscoveryInterfacePost = Initialize-PSFusionStorageEndpointIscsiDiscoveryInterfacePost  -Address 192.168.20.101/24 `
 -Gateway 192.168.20.1 `
 -NetworkInterfaceGroups null
```

- Convert the resource to JSON
```powershell
$StorageEndpointIscsiDiscoveryInterfacePost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

