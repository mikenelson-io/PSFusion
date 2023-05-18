# RoleAssignmentPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Scope** | **String** | The fully-qualified resource path (self_link) to scope the Role Assignment to. | 
**Principal** | **String** | The unique ID of the principal (User or API Client) to assign to the role. | 

## Examples

- Prepare the resource
```powershell
$RoleAssignmentPost = Initialize-PSFusionRoleAssignmentPost  -Scope null `
 -Principal null
```

- Convert the resource to JSON
```powershell
$RoleAssignmentPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

