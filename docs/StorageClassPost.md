# StorageClassPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**SizeLimit** | **Int64** | The maximum size allowed | 
**IopsLimit** | **Int64** | The maximum IOPS allowed | 
**BandwidthLimit** | **Int64** | The maximum bandwidth allowed | 

## Examples

- Prepare the resource
```powershell
$StorageClassPost = Initialize-PSFusionStorageClassPost  -Name null `
 -DisplayName null `
 -SizeLimit 10737418240 `
 -IopsLimit 10000 `
 -BandwidthLimit 1048576
```

- Convert the resource to JSON
```powershell
$StorageClassPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

