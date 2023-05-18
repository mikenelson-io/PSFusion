# Operation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The UUID of the operation. | 
**SelfLink** | **String** | The URI of the operation, e.g., /tenants/&lt;t&gt;/tenant-spaces/&lt;ts&gt;/volumes/&lt;v&gt;.  | 
**Request** | [**OperationRequest**](OperationRequest.md) |  | [optional] 
**RequestType** | **String** | Request type is a combination of action and resource kind, e.g., &quot;&quot;CreateVolume&quot;&quot;. | 
**RequestId** | **String** | The request ID specified with the REST call (or system generated) used for idempotence when making API calls. Any name is valid. | 
**RequestCollection** | **String** | The URI of the request collection in which this operation was created. Valid values are &quot;&quot;/&quot;&quot;, &quot;&quot;/&lt;tenants&gt;/&lt;t&gt;&quot;&quot; or &quot;&quot;/&lt;tenants&gt;/&lt;t&gt;/tenant-spaces&lt;ts&gt;&quot;&quot;. | [optional] 
**State** | [**OperationState**](OperationState.md) |  | [optional] 
**Result** | [**OperationResult**](OperationResult.md) |  | [optional] 
**Status** | **String** | The latest status of the operation indicates if it is waiting (Pending), active (Running, Aborting) or complete (Succeeded, Failed). | 
**RetryIn** | **Int32** | Recommended time to wait before getting the operation again to observe status change (polling interval). Unit is milliseconds, e.g., 100. | 
**VarError** | [**ModelError**](ModelError.md) |  | [optional] 
**CreatedAt** | **Int64** | The time that the operation was created, in milliseconds since the Unix epoch. | 

## Examples

- Prepare the resource
```powershell
$Operation = Initialize-PSFusionOperation  -Id null `
 -SelfLink null `
 -Request null `
 -RequestType null `
 -RequestId null `
 -RequestCollection null `
 -State null `
 -Result null `
 -Status null `
 -RetryIn null `
 -VarError null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$Operation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

