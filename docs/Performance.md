# Performance
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | [**ResourceReference**](ResourceReference.md) |  | [optional] 
**ReadsPerSec** | **Int64** | Reads per second | [optional] 
**ReadLatencyUs** | **Int64** | Read Latency in microseconds | [optional] 
**ReadBandwidth** | **Int64** | Read Bandwidth in bytes per second | [optional] 
**WritesPerSec** | **Int64** | Writes per second | [optional] 
**WriteLatencyUs** | **Int64** | Write Latency in microseconds | [optional] 
**WriteBandwidth** | **Int64** | Write Bandwidth in bytes per second | [optional] 

## Examples

- Prepare the resource
```powershell
$Performance = Initialize-PSFusionPerformance  -Resource null `
 -ReadsPerSec null `
 -ReadLatencyUs null `
 -ReadBandwidth null `
 -WritesPerSec null `
 -WriteLatencyUs null `
 -WriteBandwidth null
```

- Convert the resource to JSON
```powershell
$Performance | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

