# StorageEndpoint
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Region** | [**RegionRef**](RegionRef.md) |  | [optional] 
**AvailabilityZone** | [**AvailabilityZoneRef**](AvailabilityZoneRef.md) |  | [optional] 
**EndpointType** | **String** | The endpoint type. | 
**Iscsi** | [**StorageEndpointIscsi**](StorageEndpointIscsi.md) |  | [optional] 
**CbsAzureIscsi** | [**StorageEndpointCbsAzureIscsi**](StorageEndpointCbsAzureIscsi.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageEndpoint = Initialize-PSFusionStorageEndpoint  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -Region null `
 -AvailabilityZone null `
 -EndpointType null `
 -Iscsi null `
 -CbsAzureIscsi null
```

- Convert the resource to JSON
```powershell
$StorageEndpoint | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

