# OperationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | [**ResourceReference**](ResourceReference.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OperationRequest = Initialize-PSFusionOperationRequest  -Resource null
```

- Convert the resource to JSON
```powershell
$OperationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

