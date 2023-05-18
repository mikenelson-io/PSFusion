# NetworkInterfaceEth
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Address** | **String** | The IPv4 address associated with this Network Interface. | [optional] 
**Gateway** | **String** | The IPv4 address of the gateway through which this Network Interface will communicate with the network. | [optional] 
**MacAddress** | **String** | The media access control address associated with this Network Interface. | [optional] 
**Mtu** | **Int32** | The maximum message transfer unit size for this Network Interface (in bytes). | [optional] 
**Vlan** | **Int32** | The VLAN ID for this Network Interface. | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceEth = Initialize-PSFusionNetworkInterfaceEth  -Address 192.168.20.42/24 `
 -Gateway 192.168.20.1 `
 -MacAddress null `
 -Mtu null `
 -Vlan null
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceEth | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

