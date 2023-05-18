# PlacementGroupPatch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | [**NullableString**](NullableString.md) |  | [optional] 
**Array** | [**NullableString**](NullableString.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PlacementGroupPatch = Initialize-PSFusionPlacementGroupPatch  -DisplayName null `
 -Array null
```

- Convert the resource to JSON
```powershell
$PlacementGroupPatch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

