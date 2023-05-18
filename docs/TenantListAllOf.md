# TenantListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**Tenant[]**](Tenant.md) | A JSON array of Tenants | 

## Examples

- Prepare the resource
```powershell
$TenantListAllOf = Initialize-PSFusionTenantListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$TenantListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

