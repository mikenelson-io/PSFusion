# HostAccessPoliciesPostAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Iqn** | **String** | The iSCSI qualified name (IQN) associated with the host | 
**Personality** | **String** | The Personality of the Host machine, supported personality: windows, linux, esxi, oracle-vm-server. coming personality: aix, hitachi-vsp, hpux, solaris, vms | 

## Examples

- Prepare the resource
```powershell
$HostAccessPoliciesPostAllOf = Initialize-PSFusionHostAccessPoliciesPostAllOf  -Iqn null `
 -Personality null
```

- Convert the resource to JSON
```powershell
$HostAccessPoliciesPostAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

