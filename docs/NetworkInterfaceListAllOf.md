# NetworkInterfaceListAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**NetworkInterface[]**](NetworkInterface.md) | A JSON array of Network Interfaces | 

## Examples

- Prepare the resource
```powershell
$NetworkInterfaceListAllOf = Initialize-PSFusionNetworkInterfaceListAllOf  -Items null
```

- Convert the resource to JSON
```powershell
$NetworkInterfaceListAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

