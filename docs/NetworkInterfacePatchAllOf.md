# NetworkInterfacePatchAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Eth** | [**NetworkInterfacePatchEth**](NetworkInterfacePatchEth.md) |  | [optional] 
**Enabled** | [**NullableBoolean**](NullableBoolean.md) |  | [optional] 
**NetworkInterfaceGroup** | [**NullableString**](NullableString.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkInterfacePatchAllOf = Initialize-PSFusionNetworkInterfacePatchAllOf  -Eth null `
 -Enabled null `
 -NetworkInterfaceGroup null
```

- Convert the resource to JSON
```powershell
$NetworkInterfacePatchAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

