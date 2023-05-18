# SessionIscsi
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InitiatorIqn** | **String** | The iSCSI Qualified Name of the Initiator. | [optional] 
**TargetIqn** | **String** | The iSCSI Qualified Name of the Target. | [optional] 
**InitiatorPortal** | **String** | TCP/IP network address and tcp port number of the iSCSI Initiator. | [optional] 
**TargetDiscoveryAddress** | **String** | The iSCSI Discovery Login IP for this session. | [optional] 
**TargetPortal** | **String** | TCP/IP network address and tcp port number of the iSCSI Target. | [optional] 

## Examples

- Prepare the resource
```powershell
$SessionIscsi = Initialize-PSFusionSessionIscsi  -InitiatorIqn null `
 -TargetIqn null `
 -InitiatorPortal null `
 -TargetDiscoveryAddress null `
 -TargetPortal null
```

- Convert the resource to JSON
```powershell
$SessionIscsi | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

