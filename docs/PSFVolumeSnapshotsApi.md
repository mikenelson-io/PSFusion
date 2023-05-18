# PSFusion.PSFusion/Api.PSFVolumeSnapshotsApi

All URIs are relative to *https://api.pure1.purestorage.com/fusion/api/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-PSFVolumeSnapshot**](PSFVolumeSnapshotsApi.md#Get-PSFVolumeSnapshot) | **GET** /tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/snapshots/{snapshot_name}/volume-snapshots/{volume_snapshot_name} | Gets a specific Volume Snapshot.
[**Get-PSFVolumeSnapshotById**](PSFVolumeSnapshotsApi.md#Get-PSFVolumeSnapshotById) | **GET** /resources/volume-snapshots/{volume_snapshot_id} | Gets a specific Volume Snapshot.
[**Invoke-PSFListVolumeSnapshots**](PSFVolumeSnapshotsApi.md#Invoke-PSFListVolumeSnapshots) | **GET** /tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/snapshots/{snapshot_name}/volume-snapshots | Gets a list of all Volume snapshots in a Snapshot.
[**Invoke-PSFQueryVolumeSnapshots**](PSFVolumeSnapshotsApi.md#Invoke-PSFQueryVolumeSnapshots) | **GET** /resources/volume-snapshots | (Opt-in) Get all Volume Snapshots in the org. Provide a filter to search for specific volume snapshots.


<a id="Get-PSFVolumeSnapshot"></a>
# **Get-PSFVolumeSnapshot**
> VolumeSnapshot Get-PSFVolumeSnapshot<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SnapshotName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeSnapshotName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a specific Volume Snapshot.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$TenantName = "engineering" # String | The Tenant name
$TenantSpaceName = "wiki" # String | The Tenant Space name
$SnapshotName = "backup-2021-09-17" # String | The Snapshot name
$VolumeSnapshotName = "data-vol-3" # String | The Volume Snapshot name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a specific Volume Snapshot.
try {
    $Result = Get-PSFVolumeSnapshot -TenantName $TenantName -TenantSpaceName $TenantSpaceName -SnapshotName $SnapshotName -VolumeSnapshotName $VolumeSnapshotName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFVolumeSnapshot: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **TenantSpaceName** | **String**| The Tenant Space name | 
 **SnapshotName** | **String**| The Snapshot name | 
 **VolumeSnapshotName** | **String**| The Volume Snapshot name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**VolumeSnapshot**](VolumeSnapshot.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFVolumeSnapshotById"></a>
# **Get-PSFVolumeSnapshotById**
> VolumeSnapshot Get-PSFVolumeSnapshotById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeSnapshotId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a specific Volume Snapshot.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$VolumeSnapshotId = "<uuid>" # String | The Volume Snapshot ID
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a specific Volume Snapshot.
try {
    $Result = Get-PSFVolumeSnapshotById -VolumeSnapshotId $VolumeSnapshotId -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFVolumeSnapshotById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VolumeSnapshotId** | **String**| The Volume Snapshot ID | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**VolumeSnapshot**](VolumeSnapshot.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PSFListVolumeSnapshots"></a>
# **Invoke-PSFListVolumeSnapshots**
> VolumeSnapshotList Invoke-PSFListVolumeSnapshots<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SnapshotName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DisplayName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Destroyed] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeRemaining] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeSerialNumber] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlacementGroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionPolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedAt] <System.Nullable[Int64]><br>

Gets a list of all Volume snapshots in a Snapshot.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$TenantName = "engineering" # String | The Tenant name
$TenantSpaceName = "wiki" # String | The Tenant Space name
$SnapshotName = "backup-2021-09-17" # String | The Snapshot name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)
$Filter = "MyFilter" # String | filter should use expression language for filtering (optional)
$Sort = "MySort" # String | Returns the response items in the order specified. Set sort to the field(s) in the response by which to sort. Sorting can be performed on any of the fields in the response, and the items can be sorted in ascending or descending order by these fields. By default, the response items are sorted in ascending order. To sort in descending order, append the minus sign (-) to the field. A single request can be sorted on multiple fields. For example, you can sort all volumes from largest to smallest volume size, and then sort volumes of the same size in ascending order by volume name. To sort on multiple fields, list the fields as comma-separated values. (E.g. ""sort=size-,name"") (optional)
$Limit = 56 # Int32 |  (optional)
$Offset = 56 # Int32 |  (optional)
$Id = "MyId" # String |  (optional)
$Name = "MyName" # String |  (optional)
$DisplayName = "MyDisplayName" # String |  (optional)
$Destroyed = $true # Boolean |  (optional)
$VolumeId = "MyVolumeId" # String |  (optional)
$TimeRemaining = 789 # Int64 |  (optional)
$VolumeSerialNumber = "MyVolumeSerialNumber" # String |  (optional)
$PlacementGroupId = "MyPlacementGroupId" # String |  (optional)
$ProtectionPolicyId = "MyProtectionPolicyId" # String |  (optional)
$CreatedAt = 789 # Int64 |  (optional)

# Gets a list of all Volume snapshots in a Snapshot.
try {
    $Result = Invoke-PSFListVolumeSnapshots -TenantName $TenantName -TenantSpaceName $TenantSpaceName -SnapshotName $SnapshotName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID -Filter $Filter -Sort $Sort -Limit $Limit -Offset $Offset -Id $Id -Name $Name -DisplayName $DisplayName -Destroyed $Destroyed -VolumeId $VolumeId -TimeRemaining $TimeRemaining -VolumeSerialNumber $VolumeSerialNumber -PlacementGroupId $PlacementGroupId -ProtectionPolicyId $ProtectionPolicyId -CreatedAt $CreatedAt
} catch {
    Write-Host ("Exception occurred when calling Invoke-PSFListVolumeSnapshots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **TenantSpaceName** | **String**| The Tenant Space name | 
 **SnapshotName** | **String**| The Snapshot name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 
 **Filter** | **String**| filter should use expression language for filtering | [optional] 
 **Sort** | **String**| Returns the response items in the order specified. Set sort to the field(s) in the response by which to sort. Sorting can be performed on any of the fields in the response, and the items can be sorted in ascending or descending order by these fields. By default, the response items are sorted in ascending order. To sort in descending order, append the minus sign (-) to the field. A single request can be sorted on multiple fields. For example, you can sort all volumes from largest to smallest volume size, and then sort volumes of the same size in ascending order by volume name. To sort on multiple fields, list the fields as comma-separated values. (E.g. &quot;&quot;sort&#x3D;size-,name&quot;&quot;) | [optional] 
 **Limit** | **Int32**|  | [optional] 
 **Offset** | **Int32**|  | [optional] 
 **Id** | **String**|  | [optional] 
 **Name** | **String**|  | [optional] 
 **DisplayName** | **String**|  | [optional] 
 **Destroyed** | **Boolean**|  | [optional] 
 **VolumeId** | **String**|  | [optional] 
 **TimeRemaining** | **Int64**|  | [optional] 
 **VolumeSerialNumber** | **String**|  | [optional] 
 **PlacementGroupId** | **String**|  | [optional] 
 **ProtectionPolicyId** | **String**|  | [optional] 
 **CreatedAt** | **Int64**|  | [optional] 

### Return type

[**VolumeSnapshotList**](VolumeSnapshotList.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PSFQueryVolumeSnapshots"></a>
# **Invoke-PSFQueryVolumeSnapshots**
> VolumeSnapshotList Invoke-PSFQueryVolumeSnapshots<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DisplayName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Destroyed] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SnapshotId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeRemaining] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeSerialNumber] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlacementGroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionPolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Opt-in) Get all Volume Snapshots in the org. Provide a filter to search for specific volume snapshots.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Filter = "MyFilter" # String | filter should use expression language for filtering (optional)
$Sort = "MySort" # String | Returns the response items in the order specified. Set sort to the field(s) in the response by which to sort. Sorting can be performed on any of the fields in the response, and the items can be sorted in ascending or descending order by these fields. By default, the response items are sorted in ascending order. To sort in descending order, append the minus sign (-) to the field. A single request can be sorted on multiple fields. For example, you can sort all volumes from largest to smallest volume size, and then sort volumes of the same size in ascending order by volume name. To sort on multiple fields, list the fields as comma-separated values. (E.g. ""sort=size-,name"") (optional)
$Limit = 56 # Int32 |  (optional)
$Offset = 56 # Int32 |  (optional)
$Id = "MyId" # String |  (optional)
$Name = "MyName" # String |  (optional)
$DisplayName = "MyDisplayName" # String |  (optional)
$TenantSpaceId = "MyTenantSpaceId" # String |  (optional)
$TenantId = "MyTenantId" # String |  (optional)
$Destroyed = $true # Boolean |  (optional)
$SnapshotId = "MySnapshotId" # String |  (optional)
$VolumeId = "MyVolumeId" # String |  (optional)
$TimeRemaining = 789 # Int64 |  (optional)
$VolumeSerialNumber = "MyVolumeSerialNumber" # String |  (optional)
$PlacementGroupId = "MyPlacementGroupId" # String |  (optional)
$ProtectionPolicyId = "MyProtectionPolicyId" # String |  (optional)
$CreatedAt = 789 # Int64 |  (optional)
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Opt-in) Get all Volume Snapshots in the org. Provide a filter to search for specific volume snapshots.
try {
    $Result = Invoke-PSFQueryVolumeSnapshots -Filter $Filter -Sort $Sort -Limit $Limit -Offset $Offset -Id $Id -Name $Name -DisplayName $DisplayName -TenantSpaceId $TenantSpaceId -TenantId $TenantId -Destroyed $Destroyed -SnapshotId $SnapshotId -VolumeId $VolumeId -TimeRemaining $TimeRemaining -VolumeSerialNumber $VolumeSerialNumber -PlacementGroupId $PlacementGroupId -ProtectionPolicyId $ProtectionPolicyId -CreatedAt $CreatedAt -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Invoke-PSFQueryVolumeSnapshots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filter** | **String**| filter should use expression language for filtering | [optional] 
 **Sort** | **String**| Returns the response items in the order specified. Set sort to the field(s) in the response by which to sort. Sorting can be performed on any of the fields in the response, and the items can be sorted in ascending or descending order by these fields. By default, the response items are sorted in ascending order. To sort in descending order, append the minus sign (-) to the field. A single request can be sorted on multiple fields. For example, you can sort all volumes from largest to smallest volume size, and then sort volumes of the same size in ascending order by volume name. To sort on multiple fields, list the fields as comma-separated values. (E.g. &quot;&quot;sort&#x3D;size-,name&quot;&quot;) | [optional] 
 **Limit** | **Int32**|  | [optional] 
 **Offset** | **Int32**|  | [optional] 
 **Id** | **String**|  | [optional] 
 **Name** | **String**|  | [optional] 
 **DisplayName** | **String**|  | [optional] 
 **TenantSpaceId** | **String**|  | [optional] 
 **TenantId** | **String**|  | [optional] 
 **Destroyed** | **Boolean**|  | [optional] 
 **SnapshotId** | **String**|  | [optional] 
 **VolumeId** | **String**|  | [optional] 
 **TimeRemaining** | **Int64**|  | [optional] 
 **VolumeSerialNumber** | **String**|  | [optional] 
 **PlacementGroupId** | **String**|  | [optional] 
 **ProtectionPolicyId** | **String**|  | [optional] 
 **CreatedAt** | **Int64**|  | [optional] 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**VolumeSnapshotList**](VolumeSnapshotList.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

