# StorageClassPostAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SizeLimit** | **Int64** | The maximum size allowed | 
**IopsLimit** | **Int64** | The maximum IOPS allowed | 
**BandwidthLimit** | **Int64** | The maximum bandwidth allowed | 

## Examples

- Prepare the resource
```powershell
$StorageClassPostAllOf = Initialize-PSFusionStorageClassPostAllOf  -SizeLimit 10737418240 `
 -IopsLimit 10000 `
 -BandwidthLimit 1048576
```

- Convert the resource to JSON
```powershell
$StorageClassPostAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

