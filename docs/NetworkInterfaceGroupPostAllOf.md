# NetworkInterfaceGroupPostAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GroupType** | **String** | The type of this Network Interface Group. | 
**Eth** | [**NetworkInterfaceGroupEthPost**](NetworkInterfaceGroupEthPost.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceGroupPostAllOf = Initialize-PSFusionNetworkInterfaceGroupPostAllOf  -GroupType null `
 -Eth null
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceGroupPostAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

