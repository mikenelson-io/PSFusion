# StorageClass
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**StorageService** | [**StorageServiceRef**](StorageServiceRef.md) |  | [optional] 
**SizeLimit** | **Int64** | The maximum size allowed | 
**IopsLimit** | **Int64** | The maximum IOPS allowed | 
**BandwidthLimit** | **Int64** | The maximum bandwidth allowed | 

## Examples

- Prepare the resource
```powershell
$StorageClass = Initialize-PSFusionStorageClass  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -StorageService null `
 -SizeLimit 10737418240 `
 -IopsLimit 10000 `
 -BandwidthLimit 1048576
```

- Convert the resource to JSON
```powershell
$StorageClass | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

