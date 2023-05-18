# NullableStringArray
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String[]** | NullableStringArray specifies an optional list of strings or Names (null, empty or non-empty). | [optional] 

## Examples

- Prepare the resource
```powershell
$NullableStringArray = Initialize-PSFusionNullableStringArray  -Value null
```

- Convert the resource to JSON
```powershell
$NullableStringArray | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

