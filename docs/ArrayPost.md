# ArrayPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**ApartmentId** | **String** | Apartment Identifier of Array. Return value of purearray list | [optional] 
**HostName** | **String** | The host name of the array. | 
**HardwareType** | **String** | Name of the hardware type | 
**ApplianceId** | **String** | The Appliance id of the array. | 

## Examples

- Prepare the resource
```powershell
$ArrayPost = Initialize-PSFusionArrayPost  -Name null `
 -DisplayName null `
 -ApartmentId null `
 -HostName null `
 -HardwareType null `
 -ApplianceId null
```

- Convert the resource to JSON
```powershell
$ArrayPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

