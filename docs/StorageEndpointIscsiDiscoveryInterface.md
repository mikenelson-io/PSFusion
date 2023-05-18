# StorageEndpointIscsiDiscoveryInterface
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** | The IPv4 address for this interface. | 
**Gateway** | **String** | The IPv4 address of the gateway through which this interface will communicate with the network. | [optional] 
**Mtu** | **Int32** | Maximum message transfer unit (packet) size in bytes for this discovery interface. | [optional] 
**NetworkInterfaceGroups** | [**NetworkInterfaceGroupRef[]**](NetworkInterfaceGroupRef.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageEndpointIscsiDiscoveryInterface = Initialize-PSFusionStorageEndpointIscsiDiscoveryInterface  -Address 192.168.20.101/24 `
 -Gateway 192.168.20.1 `
 -Mtu null `
 -NetworkInterfaceGroups null
```

- Convert the resource to JSON
```powershell
$StorageEndpointIscsiDiscoveryInterface | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

