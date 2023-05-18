# AvailabilityZone
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Region** | [**RegionRef**](RegionRef.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AvailabilityZone = Initialize-PSFusionAvailabilityZone  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -Region null
```

- Convert the resource to JSON
```powershell
$AvailabilityZone | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

