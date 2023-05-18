# Pure1MetaPlacementRecommendationObjectives
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AvgPerfUsage** | **Double** |  | [optional] 
**AvgCapUsage** | **Double** |  | [optional] 
**VarPerfUsage** | **Double** |  | [optional] 
**VarCapUsage** | **Double** |  | [optional] 
**MaxPerfUsage** | **Double** |  | [optional] 
**MaxCapUsage** | **Double** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Pure1MetaPlacementRecommendationObjectives = Initialize-PSFusionPure1MetaPlacementRecommendationObjectives  -AvgPerfUsage null `
 -AvgCapUsage null `
 -VarPerfUsage null `
 -VarCapUsage null `
 -MaxPerfUsage null `
 -MaxCapUsage null
```

- Convert the resource to JSON
```powershell
$Pure1MetaPlacementRecommendationObjectives | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

