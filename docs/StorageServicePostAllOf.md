# StorageServicePostAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HardwareTypes** | **String[]** | List of Hardware Types supported for this Storage Service | 

## Examples

- Prepare the resource
```powershell
$StorageServicePostAllOf = Initialize-PSFusionStorageServicePostAllOf  -HardwareTypes null
```

- Convert the resource to JSON
```powershell
$StorageServicePostAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

