# RoleAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | A description of the role&#39;s capabilities. | 
**AssignableScopes** | **String[]** | A list of resource kinds the role can be scoped to. | 

## Examples

- Prepare the resource
```powershell
$RoleAllOf = Initialize-PSFusionRoleAllOf  -Description null `
 -AssignableScopes null
```

- Convert the resource to JSON
```powershell
$RoleAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

