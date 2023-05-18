# NetworkInterfaceGroupEth
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Prefix** | **String** | The IPv4 prefix for Network Interfaces in this Network Interface Group. | 
**Gateway** | **String** | The IPv4 address of the gateway for Network Interfaces in this Network Interface Group. | [optional] 
**Vlan** | **Int32** | The VLAN ID for this Network Interface Group. | [optional] 
**Mtu** | **Int32** | The MTU for Network Interfaces in this Network Interface Group. | 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceGroupEth = Initialize-PSFusionNetworkInterfaceGroupEth  -Prefix 192.168.20.0/24 `
 -Gateway 192.168.20.1 `
 -Vlan 1000 `
 -Mtu 1500
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceGroupEth | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

