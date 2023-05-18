# Array
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**ApartmentId** | **String** | Apartment identifier of Array. Return value of purearray list | 
**HardwareType** | [**HardwareTypeRef**](HardwareTypeRef.md) |  | [optional] 
**Region** | [**RegionRef**](RegionRef.md) |  | [optional] 
**AvailabilityZone** | [**AvailabilityZoneRef**](AvailabilityZoneRef.md) |  | 
**ApplianceId** | **String** | The Appliance id of the array. | 
**HostName** | **String** | The host name of the array. This should resolve to the management address of the array. If DNS is not available, provide the management address directly. | 
**MaintenanceMode** | **Boolean** | The flag to indicate whether the array is ready to use or not. True if not ready. | [optional] 
**UnavailableMode** | **Boolean** | The flag to indicate whether the array is unavaialble/unhealthy. True if unavailable. | [optional] 

## Examples

- Prepare the resource
```powershell
$Array = Initialize-PSFusionArray  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -ApartmentId null `
 -HardwareType null `
 -Region null `
 -AvailabilityZone null `
 -ApplianceId null `
 -HostName null `
 -MaintenanceMode null `
 -UnavailableMode null
```

- Convert the resource to JSON
```powershell
$Array | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

