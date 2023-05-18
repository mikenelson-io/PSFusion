# NetworkInterfacePatch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | [**NullableString**](NullableString.md) |  | [optional] 
**Eth** | [**NetworkInterfacePatchEth**](NetworkInterfacePatchEth.md) |  | [optional] 
**Enabled** | [**NullableBoolean**](NullableBoolean.md) |  | [optional] 
**NetworkInterfaceGroup** | [**NullableString**](NullableString.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkInterfacePatch = Initialize-PSFusionNetworkInterfacePatch  -DisplayName null `
 -Eth null `
 -Enabled null `
 -NetworkInterfaceGroup null
```

- Convert the resource to JSON
```powershell
$NetworkInterfacePatch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

