# Pure1MetaValue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimestampMs** | **Int64** |  | [optional] 
**Value** | **Double** |  | [optional] 
**ConfidenceInterval** | [**Pure1MetaValueConfidenceInterval**](Pure1MetaValueConfidenceInterval.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Pure1MetaValue = Initialize-PSFusionPure1MetaValue  -TimestampMs null `
 -Value null `
 -ConfidenceInterval null
```

- Convert the resource to JSON
```powershell
$Pure1MetaValue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

