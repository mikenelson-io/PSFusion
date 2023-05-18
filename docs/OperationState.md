# OperationState
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**ModelError**](ModelError.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OperationState = Initialize-PSFusionOperationState  -VarError null
```

- Convert the resource to JSON
```powershell
$OperationState | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

