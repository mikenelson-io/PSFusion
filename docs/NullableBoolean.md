# NullableBoolean
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **Boolean** | NullableBoolean specifies an optional boolean (null, true or false). | [optional] 

## Examples

- Prepare the resource
```powershell
$NullableBoolean = Initialize-PSFusionNullableBoolean  -Value null
```

- Convert the resource to JSON
```powershell
$NullableBoolean | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

