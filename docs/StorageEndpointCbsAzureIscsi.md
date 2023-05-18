# StorageEndpointCbsAzureIscsi
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StorageEndpointCollectionIdentity** | **String** | The Storage Endpoint Collection Identity which belongs to the Azure entities. | [optional] 
**LoadBalancer** | **String** | The Load Balancer id which gives permissions to CBS array appliations to modify the Load Balancer. | [optional] 
**LoadBalancerAddresses** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StorageEndpointCbsAzureIscsi = Initialize-PSFusionStorageEndpointCbsAzureIscsi  -StorageEndpointCollectionIdentity /subscriptions/sub/resourcegroups/sec/providers/ms/userAssignedIdentities/secId `
 -LoadBalancer /subscriptions/sub/resourcegroups/sec/providers/ms/loadBalancers/sec-lb `
 -LoadBalancerAddresses null
```

- Convert the resource to JSON
```powershell
$StorageEndpointCbsAzureIscsi | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

