# ProtectionPolicyPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Objectives** | [**ProtectionPolicyPostObjectivesInner[]**](ProtectionPolicyPostObjectivesInner.md) | A JSON array of objectives | 

## Examples

- Prepare the resource
```powershell
$ProtectionPolicyPost = Initialize-PSFusionProtectionPolicyPost  -Name null `
 -DisplayName null `
 -Objectives null
```

- Convert the resource to JSON
```powershell
$ProtectionPolicyPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

