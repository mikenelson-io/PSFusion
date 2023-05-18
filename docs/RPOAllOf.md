# RPOAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Rpo** | **String** | RPO (Recovery Point Objective) value. Format: only support subset of **Durations** format in https://en.wikipedia.org/wiki/ISO_8601. 1. The time designators(P,T,H,M,S) must be capital letters.  2. Only accepts whole numbers.  3. Leading zeroes are not required. | [optional] 

## Examples

- Prepare the resource
```powershell
$RPOAllOf = Initialize-PSFusionRPOAllOf  -Rpo PT1H
```

- Convert the resource to JSON
```powershell
$RPOAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

