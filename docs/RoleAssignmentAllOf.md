# RoleAssignmentAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Role** | [**RoleRef**](RoleRef.md) |  | 
**Scope** | [**ResourceReference**](ResourceReference.md) |  | 
**Principal** | **String** | The unique id of the principal (User or API Client) assigned to the role. | 

## Examples

- Prepare the resource
```powershell
$RoleAssignmentAllOf = Initialize-PSFusionRoleAssignmentAllOf  -Role null `
 -Scope null `
 -Principal null
```

- Convert the resource to JSON
```powershell
$RoleAssignmentAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

