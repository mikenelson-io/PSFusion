# RPO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of the objective. &quot;&quot;RPO&quot;&quot; or &quot;&quot;Retention&quot;&quot;. | 
**Rpo** | **String** | RPO (Recovery Point Objective) value. Format: only support subset of **Durations** format in https://en.wikipedia.org/wiki/ISO_8601. 1. The time designators(P,T,H,M,S) must be capital letters.  2. Only accepts whole numbers.  3. Leading zeroes are not required. | 

## Examples

- Prepare the resource
```powershell
$RPO = Initialize-PSFusionRPO  -Type null `
 -Rpo PT1H
```

- Convert the resource to JSON
```powershell
$RPO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

