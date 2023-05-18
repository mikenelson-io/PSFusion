# NetworkInterfaceAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Region** | [**RegionRef**](RegionRef.md) |  | [optional] 
**AvailabilityZone** | [**AvailabilityZoneRef**](AvailabilityZoneRef.md) |  | [optional] 
**Array** | [**ArrayRef**](ArrayRef.md) |  | [optional] 
**InterfaceType** | **String** | The interface type. | 
**Eth** | [**NetworkInterfaceEth**](NetworkInterfaceEth.md) |  | [optional] 
**Fc** | [**NetworkInterfaceFc**](NetworkInterfaceFc.md) |  | [optional] 
**Services** | **String[]** | The services provided by this Network Interface. | [optional] 
**Enabled** | **Boolean** | True if interface is in use. | 
**NetworkInterfaceGroup** | [**NetworkInterfaceGroupRef**](NetworkInterfaceGroupRef.md) |  | [optional] 
**MaxSpeed** | **Int64** | Configured speed of this Network Interface. Typically this is the maximum speed of the port or bond represented by the Network Interface. | 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceAllOf = Initialize-PSFusionNetworkInterfaceAllOf  -Region null `
 -AvailabilityZone null `
 -Array null `
 -InterfaceType null `
 -Eth null `
 -Fc null `
 -Services null `
 -Enabled null `
 -NetworkInterfaceGroup null `
 -MaxSpeed null
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

