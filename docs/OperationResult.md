# OperationResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | [**ResourceReference**](ResourceReference.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OperationResult = Initialize-PSFusionOperationResult  -Resource null
```

- Convert the resource to JSON
```powershell
$OperationResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

