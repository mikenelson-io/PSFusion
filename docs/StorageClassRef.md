# StorageClassRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**Kind** | **String** | The kind of the resource (e.g., Volume). | 
**SelfLink** | **String** | The URI of the resource. | 

## Examples

- Prepare the resource
```powershell
$StorageClassRef = Initialize-PSFusionStorageClassRef  -Id null `
 -Name null `
 -Kind null `
 -SelfLink /object-types/name
```

- Convert the resource to JSON
```powershell
$StorageClassRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

