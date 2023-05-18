# ArrayPostAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApartmentId** | **String** | Apartment Identifier of Array. Return value of purearray list | [optional] 
**HostName** | **String** | The host name of the array. | 
**HardwareType** | **String** | Name of the hardware type | 
**ApplianceId** | **String** | The Appliance id of the array. | 

## Examples

- Prepare the resource
```powershell
$ArrayPostAllOf = Initialize-PSFusionArrayPostAllOf  -ApartmentId null `
 -HostName null `
 -HardwareType null `
 -ApplianceId null
```

- Convert the resource to JSON
```powershell
$ArrayPostAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

