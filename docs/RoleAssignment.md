# RoleAssignment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Role** | [**RoleRef**](RoleRef.md) |  | 
**Scope** | [**ResourceReference**](ResourceReference.md) |  | 
**Principal** | **String** | The unique id of the principal (User or API Client) assigned to the role. | 

## Examples

- Prepare the resource
```powershell
$RoleAssignment = Initialize-PSFusionRoleAssignment  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -Role null `
 -Scope null `
 -Principal null
```

- Convert the resource to JSON
```powershell
$RoleAssignment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

