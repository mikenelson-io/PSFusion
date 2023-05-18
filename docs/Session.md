# Session
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvailabilityZone** | [**AvailabilityZone**](AvailabilityZone.md) |  | [optional] 
**Protocol** | **String** | Protocol name for the session. | [optional] 
**Iscsi** | [**SessionIscsi**](SessionIscsi.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Session = Initialize-PSFusionSession  -AvailabilityZone null `
 -Protocol null `
 -Iscsi null
```

- Convert the resource to JSON
```powershell
$Session | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

