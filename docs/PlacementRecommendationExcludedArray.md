# PlacementRecommendationExcludedArray
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**Kind** | **String** | The kind of the resource (e.g., Volume). | 
**SelfLink** | **String** | The URI of the resource. | 
**Reason** | **String** | Reason Placement Group cannot be placed on this array | [optional] 

## Examples

- Prepare the resource
```powershell
$PlacementRecommendationExcludedArray = Initialize-PSFusionPlacementRecommendationExcludedArray  -Id null `
 -Name null `
 -Kind null `
 -SelfLink /object-types/name `
 -Reason null
```

- Convert the resource to JSON
```powershell
$PlacementRecommendationExcludedArray | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

