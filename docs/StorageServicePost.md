# StorageServicePost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**HardwareTypes** | **String[]** | List of Hardware Types supported for this Storage Service | 

## Examples

- Prepare the resource
```powershell
$StorageServicePost = Initialize-PSFusionStorageServicePost  -Name null `
 -DisplayName null `
 -HardwareTypes null
```

- Convert the resource to JSON
```powershell
$StorageServicePost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

