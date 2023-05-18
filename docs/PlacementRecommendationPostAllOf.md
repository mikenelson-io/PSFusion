# PlacementRecommendationPostAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PlacementGroupLink** | **String** | Deprecated. Use placement_group instead. The link to the placement group that we would like to generate a placement recommendation report on | [optional] 
**PlacementGroup** | **String** | Placement Group you would like to generate a placement recommendation report on. For placement of new placement group, leave this blank, and instead fill in simulated_placement | [optional] 
**Tenant** | **String** | Tenant that Placement Group belongs to. For placement of new placement group, enter Tenant where the Placement Group would have been created in | 
**TenantSpace** | **String** | Tenant Space that Placement Group belongs to. For placement of new placement group, enter TenantSpace where Placement Group would have been created in | 
**PlacementEngine** | [**PlacementEngine**](PlacementEngine.md) |  | [optional] 
**SimulatedPlacement** | [**SimulatedPlacementPost**](SimulatedPlacementPost.md) |  | [optional] 
**TargetArrays** | **String[]** | Optional argument. If provided, specify a list of array names to constraint the list of arrays under consideration for placement recommendations | [optional] 

## Examples

- Prepare the resource
```powershell
$PlacementRecommendationPostAllOf = Initialize-PSFusionPlacementRecommendationPostAllOf  -PlacementGroupLink null `
 -PlacementGroup null `
 -Tenant null `
 -TenantSpace null `
 -PlacementEngine null `
 -SimulatedPlacement null `
 -TargetArrays null
```

- Convert the resource to JSON
```powershell
$PlacementRecommendationPostAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

