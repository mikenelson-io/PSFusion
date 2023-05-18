# Pure1MetaPlacementRecommendation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Raw** | **String** | Raw output from Pure1 Meta Recommendation engine in JSON string format | [optional] 
**Objectives** | [**Pure1MetaPlacementRecommendationObjectives**](Pure1MetaPlacementRecommendationObjectives.md) |  | [optional] 
**LoadValues** | [**Pure1MetaPlacementRecommendationLoadValues**](Pure1MetaPlacementRecommendationLoadValues.md) |  | [optional] 
**CapacityValues** | [**Pure1MetaValue[]**](Pure1MetaValue.md) |  | [optional] 
**DaysToReach90PercentCapacity** | **Decimal** |  | [optional] 
**DaysToReach100PercentCapacity** | **Decimal** |  | [optional] 
**VarError** | **String** |  | [optional] 
**Warnings** | [**Pure1MetaWarning[]**](Pure1MetaWarning.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Pure1MetaPlacementRecommendation = Initialize-PSFusionPure1MetaPlacementRecommendation  -Raw null `
 -Objectives null `
 -LoadValues null `
 -CapacityValues null `
 -DaysToReach90PercentCapacity null `
 -DaysToReach100PercentCapacity null `
 -VarError null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$Pure1MetaPlacementRecommendation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

