# NullableSize
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **Int64** | NullableSize specifies an optional size (null or non-zero). Note that resizing a volume is potentially destructive if the new size is smaller! | [optional] 

## Examples

- Prepare the resource
```powershell
$NullableSize = Initialize-PSFusionNullableSize  -Value null
```

- Convert the resource to JSON
```powershell
$NullableSize | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

