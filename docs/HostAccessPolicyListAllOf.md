# HostAccessPolicyListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**HostAccessPolicy[]**](HostAccessPolicy.md) | A JSON array of Host Access Policies | 

## Examples

- Prepare the resource
```powershell
$HostAccessPolicyListAllOf = Initialize-PSFusionHostAccessPolicyListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$HostAccessPolicyListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

