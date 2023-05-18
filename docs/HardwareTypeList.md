# HardwareTypeList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int32** | count of items in the list | 
**MoreItemsRemaining** | **Boolean** | True if not all items in the search were returned in the provided array. | [optional] 
**Items** | [**HardwareType[]**](HardwareType.md) | A JSON array of Hardware Types | 

## Examples

- Prepare the resource
```powershell
$HardwareTypeList = Initialize-PSFusionHardwareTypeList  -Count null `
 -MoreItemsRemaining null `
 -Items null
```

- Convert the resource to JSON
```powershell
$HardwareTypeList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

