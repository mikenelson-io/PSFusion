# ProtectionPolicyListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**ProtectionPolicy[]**](ProtectionPolicy.md) | A JSON array of Protection Policies | 

## Examples

- Prepare the resource
```powershell
$ProtectionPolicyListAllOf = Initialize-PSFusionProtectionPolicyListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$ProtectionPolicyListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

