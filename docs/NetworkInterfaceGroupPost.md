# NetworkInterfaceGroupPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**GroupType** | **String** | The type of this Network Interface Group. | 
**Eth** | [**NetworkInterfaceGroupEthPost**](NetworkInterfaceGroupEthPost.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceGroupPost = Initialize-PSFusionNetworkInterfaceGroupPost  -Name null `
 -DisplayName null `
 -GroupType null `
 -Eth null
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceGroupPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

