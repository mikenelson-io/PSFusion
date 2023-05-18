# NullableMtu
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **Int32** | NullableMtu specifies an optional Maximum message transfer unit (MTU) size in bytes. | [optional] 

## Examples

- Prepare the resource
```powershell
$NullableMtu = Initialize-PSFusionNullableMtu  -Value 1500
```

- Convert the resource to JSON
```powershell
$NullableMtu | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

