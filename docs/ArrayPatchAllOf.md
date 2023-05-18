# ArrayPatchAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HostName** | [**NullableString**](NullableString.md) |  | [optional] 
**MaintenanceMode** | [**NullableBoolean**](NullableBoolean.md) |  | [optional] 
**UnavailableMode** | [**NullableBoolean**](NullableBoolean.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ArrayPatchAllOf = Initialize-PSFusionArrayPatchAllOf  -HostName null `
 -MaintenanceMode null `
 -UnavailableMode null
```

- Convert the resource to JSON
```powershell
$ArrayPatchAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

