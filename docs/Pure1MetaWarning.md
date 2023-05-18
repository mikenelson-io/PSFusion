# Pure1MetaWarning
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Description of the warning | [optional] 
**WarningCode** | **String** | Unique code identifying the warning | [optional] 

## Examples

- Prepare the resource
```powershell
$Pure1MetaWarning = Initialize-PSFusionPure1MetaWarning  -Message null `
 -WarningCode null
```

- Convert the resource to JSON
```powershell
$Pure1MetaWarning | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

