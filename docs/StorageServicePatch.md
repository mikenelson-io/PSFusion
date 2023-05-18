# StorageServicePatch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | [**NullableString**](NullableString.md) |  | [optional] 
**HardwareTypes** | [**NullableStringArray**](NullableStringArray.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageServicePatch = Initialize-PSFusionStorageServicePatch  -DisplayName null `
 -HardwareTypes null
```

- Convert the resource to JSON
```powershell
$StorageServicePatch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

