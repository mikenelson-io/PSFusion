# Tenant
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**TenantSpacesLink** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Tenant = Initialize-PSFusionTenant  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -TenantSpacesLink null
```

- Convert the resource to JSON
```powershell
$Tenant | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

