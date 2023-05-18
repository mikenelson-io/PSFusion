# NullableString
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | NullableString specifies an optional string or Name (null, empty or non-empty). | [optional] 

## Examples

- Prepare the resource
```powershell
$NullableString = Initialize-PSFusionNullableString  -Value null
```

- Convert the resource to JSON
```powershell
$NullableString | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

