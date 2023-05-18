# ProtectionPolicyPostObjectivesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of the objective. &quot;&quot;RPO&quot;&quot; or &quot;&quot;Retention&quot;&quot;. | 
**Rpo** | **String** | RPO (Recovery Point Objective) value. Format: only support subset of **Durations** format in https://en.wikipedia.org/wiki/ISO_8601. 1. The time designators(P,T,H,M,S) must be capital letters.  2. Only accepts whole numbers.  3. Leading zeroes are not required. | 
**After** | **String** | Rentenion period: how long the snapshots will be retained.  Format: only support subset of **Durations** format in https://en.wikipedia.org/wiki/ISO_8601. 1. The time designators(P,T,H,M,S) must be capital letters.  2. Only accepts whole numbers.  3. Leading zeroes are not required. | 

## Examples

- Prepare the resource
```powershell
$ProtectionPolicyPostObjectivesInner = Initialize-PSFusionProtectionPolicyPostObjectivesInner  -Type null `
 -Rpo PT1H `
 -After PT24H
```

- Convert the resource to JSON
```powershell
$ProtectionPolicyPostObjectivesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

