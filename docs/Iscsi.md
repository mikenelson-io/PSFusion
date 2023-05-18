# Iscsi
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Iqn** | **String** | The iSCSI qualified name (IQN) for the target. | [optional] 
**Addresses** | **String[]** | The IP addresses for the iSCSI target. | [optional] 

## Examples

- Prepare the resource
```powershell
$Iscsi = Initialize-PSFusionIscsi  -Iqn iqn.year-mo.org.debian:XX:XXXXXXXXXXXX `
 -Addresses null
```

- Convert the resource to JSON
```powershell
$Iscsi | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

