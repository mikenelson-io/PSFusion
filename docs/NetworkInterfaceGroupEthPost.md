# NetworkInterfaceGroupEthPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Prefix** | **String** | The IPv4 prefix for Network Interfaces in this Network Interface Group. | 
**Gateway** | **String** | The IPv4 address of the gateway for Network Interfaces in this Network Interface Group. | [optional] 
**Mtu** | **Int32** | Maximum message transfer unit (packet) size in bytes for the Network Interfaces in this Network Interface Group. MTU setting cannot exceed the MTU of the underlying physical interfaces. | 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceGroupEthPost = Initialize-PSFusionNetworkInterfaceGroupEthPost  -Prefix 192.168.20.0/24 `
 -Gateway 192.168.20.1 `
 -Mtu 1500
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceGroupEthPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

