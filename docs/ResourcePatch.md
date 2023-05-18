# ResourcePatch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | [**NullableString**](NullableString.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResourcePatch = Initialize-PSFusionResourcePatch  -DisplayName null
```

- Convert the resource to JSON
```powershell
$ResourcePatch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

