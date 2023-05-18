# OperationListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**Operation[]**](Operation.md) | A JSON array of Operations | 

## Examples

- Prepare the resource
```powershell
$OperationListAllOf = Initialize-PSFusionOperationListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$OperationListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

