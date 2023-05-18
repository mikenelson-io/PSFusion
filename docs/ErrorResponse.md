# ErrorResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestId** | **String** | The request_id provided with the request which generated this error. | [optional] 
**VarError** | [**ModelError**](ModelError.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorResponse = Initialize-PSFusionErrorResponse  -RequestId null `
 -VarError null
```

- Convert the resource to JSON
```powershell
$ErrorResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

