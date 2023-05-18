# HardwareType
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**ArrayType** | **String** |  | 
**MediaType** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$HardwareType = Initialize-PSFusionHardwareType  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -ArrayType null `
 -MediaType null
```

- Convert the resource to JSON
```powershell
$HardwareType | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

