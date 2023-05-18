# TenantSpacePost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 

## Examples

- Prepare the resource
```powershell
$TenantSpacePost = Initialize-PSFusionTenantSpacePost  -Name null `
 -DisplayName null
```

- Convert the resource to JSON
```powershell
$TenantSpacePost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

