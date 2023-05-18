# NetworkInterface
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
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
$NetworkInterface = Initialize-PSFusionNetworkInterface  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -Region null `
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
$NetworkInterface | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

