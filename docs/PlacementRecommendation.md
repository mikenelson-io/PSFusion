# PlacementRecommendation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Tenant** | [**TenantRef**](TenantRef.md) |  | [optional] 
**TenantSpace** | [**TenantSpaceRef**](TenantSpaceRef.md) |  | [optional] 
**PlacementEngine** | [**PlacementEngine**](PlacementEngine.md) |  | [optional] 
**PlacementGroupId** | **String** | If not empty, this is the Placement Group ID for which the placement recommendation was made | [optional] 
**PlacementGroup** | [**PlacementGroupRef**](PlacementGroupRef.md) |  | [optional] 
**SimulatedPlacement** | [**SimulatedPlacement**](SimulatedPlacement.md) |  | [optional] 
**IncludedArrays** | [**PlacementRecommendationIncludedArray[]**](PlacementRecommendationIncludedArray.md) | A JSON array of Arrays that the Placement Group can be placed/migrated to | [optional] 
**ExcludedArrays** | [**PlacementRecommendationExcludedArray[]**](PlacementRecommendationExcludedArray.md) | A JSON array of Arrays that the Placement Group cannot be placed on | [optional] 
**TargetArrays** | [**ArrayRef[]**](ArrayRef.md) | If present, this is the list of arrays that was provided when requesting the placement recommendation report to consider for placement recommendations | [optional] 
**TimeRemaining** | **Int64** | Number of milliseconds left before this Placement Recommendation report is deleted | [optional] 

## Examples

- Prepare the resource
```powershell
$PlacementRecommendation = Initialize-PSFusionPlacementRecommendation  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -Tenant null `
 -TenantSpace null `
 -PlacementEngine null `
 -PlacementGroupId null `
 -PlacementGroup null `
 -SimulatedPlacement null `
 -IncludedArrays null `
 -ExcludedArrays null `
 -TargetArrays null `
 -TimeRemaining null
```

- Convert the resource to JSON
```powershell
$PlacementRecommendation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

