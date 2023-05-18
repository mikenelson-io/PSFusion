# StorageEndpointAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Region** | [**RegionRef**](RegionRef.md) |  | [optional] 
**AvailabilityZone** | [**AvailabilityZoneRef**](AvailabilityZoneRef.md) |  | [optional] 
**EndpointType** | **String** | The endpoint type. | 
**Iscsi** | [**StorageEndpointIscsi**](StorageEndpointIscsi.md) |  | [optional] 
**CbsAzureIscsi** | [**StorageEndpointCbsAzureIscsi**](StorageEndpointCbsAzureIscsi.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageEndpointAllOf = Initialize-PSFusionStorageEndpointAllOf  -Region null `
 -AvailabilityZone null `
 -EndpointType null `
 -Iscsi null `
 -CbsAzureIscsi null
```

- Convert the resource to JSON
```powershell
$StorageEndpointAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

