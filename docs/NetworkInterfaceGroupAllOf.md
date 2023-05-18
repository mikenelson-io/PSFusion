# NetworkInterfaceGroupAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Region** | [**RegionRef**](RegionRef.md) |  | [optional] 
**AvailabilityZone** | [**AvailabilityZoneRef**](AvailabilityZoneRef.md) |  | [optional] 
**GroupType** | **String** | The type of this Network Interface Group. | 
**Eth** | [**NetworkInterfaceGroupEth**](NetworkInterfaceGroupEth.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceGroupAllOf = Initialize-PSFusionNetworkInterfaceGroupAllOf  -Region null `
 -AvailabilityZone null `
 -GroupType null `
 -Eth null
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceGroupAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

