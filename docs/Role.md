# Role
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Description** | **String** | A description of the role&#39;s capabilities. | 
**AssignableScopes** | **String[]** | A list of resource kinds the role can be scoped to. | 

## Examples

- Prepare the resource
```powershell
$Role = Initialize-PSFusionRole  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -Description null `
 -AssignableScopes null
```

- Convert the resource to JSON
```powershell
$Role | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

