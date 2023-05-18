# HostAccessPoliciesPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Iqn** | **String** | The iSCSI qualified name (IQN) associated with the host | 
**Personality** | **String** | The Personality of the Host machine, supported personality: windows, linux, esxi, oracle-vm-server. coming personality: aix, hitachi-vsp, hpux, solaris, vms | 

## Examples

- Prepare the resource
```powershell
$HostAccessPoliciesPost = Initialize-PSFusionHostAccessPoliciesPost  -Name null `
 -DisplayName null `
 -Iqn null `
 -Personality null
```

- Convert the resource to JSON
```powershell
$HostAccessPoliciesPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

