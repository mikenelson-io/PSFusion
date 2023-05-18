# NetworkInterfaceFc
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Wwn** | **String** | World Wide Name of the specified Fibre Channel port. | [optional] 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceFc = Initialize-PSFusionNetworkInterfaceFc  -Wwn 50:01:50:01:50:01:50:00
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceFc | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

