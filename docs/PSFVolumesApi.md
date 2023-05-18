# PSFusion.PSFusion/Api.PSFVolumesApi

All URIs are relative to *https://api.pure1.purestorage.com/fusion/api/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PSFVolume**](PSFVolumesApi.md#New-PSFVolume) | **POST** /tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/volumes | Creates a Volume.
[**Remove-PSFVolume**](PSFVolumesApi.md#Remove-PSFVolume) | **DELETE** /tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/volumes/{volume_name} | Eradicate a specific volume. Volume has to be destroyed before it can be eradicated.
[**Get-PSFVolume**](PSFVolumesApi.md#Get-PSFVolume) | **GET** /tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/volumes/{volume_name} | Gets a specific Volume.
[**Get-PSFVolumeById**](PSFVolumesApi.md#Get-PSFVolumeById) | **GET** /resources/volumes/{volume_id} | Gets a specific Volume.
[**Get-PSFVolumePerformance**](PSFVolumesApi.md#Get-PSFVolumePerformance) | **GET** /tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/volumes/{volume_name}/performance | (Provider) Gets performance metrics of a specific Volume.
[**Get-PSFVolumeSpace**](PSFVolumesApi.md#Get-PSFVolumeSpace) | **GET** /tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/volumes/{volume_name}/space | (Provider) Gets space metrics of a specific Volume.
[**Invoke-PSFListVolumes**](PSFVolumesApi.md#Invoke-PSFListVolumes) | **GET** /tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/volumes | Gets a list of all Volumes.
[**Invoke-PSFQueryVolumes**](PSFVolumesApi.md#Invoke-PSFQueryVolumes) | **GET** /resources/volumes | (Opt-in) Get all Volumes in the org. Provide a filter to search for specific volumes.
[**Update-PSFVolume**](PSFVolumesApi.md#Update-PSFVolume) | **PATCH** /tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/volumes/{volume_name} | Updates a Volume -- renaming, and resizing it; changing its Storage Class; changing its Placement Group; adding or removing host connections.


<a id="New-PSFVolume"></a>
# **New-PSFVolume**
> Operation New-PSFVolume<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumePost] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Creates a Volume.

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
$VolumePost = Initialize-VolumePost -Name "MyName" -DisplayName "MyDisplayName" -Size 0 -StorageClass "MyStorageClass" -PlacementGroup "MyPlacementGroup" -ProtectionPolicy "MyProtectionPolicy" -SourceLink "MySourceLink" # VolumePost | 
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Creates a Volume.
try {
    $Result = New-PSFVolume -TenantName $TenantName -TenantSpaceName $TenantSpaceName -VolumePost $VolumePost -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling New-PSFVolume: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **TenantSpaceName** | **String**| The Tenant Space name | 
 **VolumePost** | [**VolumePost**](VolumePost.md)|  | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Operation**](Operation.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-PSFVolume"></a>
# **Remove-PSFVolume**
> Operation Remove-PSFVolume<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Eradicate a specific volume. Volume has to be destroyed before it can be eradicated.

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
$VolumeName = "data-vol-3" # String | The Volume name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Eradicate a specific volume. Volume has to be destroyed before it can be eradicated.
try {
    $Result = Remove-PSFVolume -TenantName $TenantName -TenantSpaceName $TenantSpaceName -VolumeName $VolumeName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Remove-PSFVolume: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **TenantSpaceName** | **String**| The Tenant Space name | 
 **VolumeName** | **String**| The Volume name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Operation**](Operation.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFVolume"></a>
# **Get-PSFVolume**
> Volume Get-PSFVolume<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a specific Volume.

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
$VolumeName = "data-vol-3" # String | The Volume name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a specific Volume.
try {
    $Result = Get-PSFVolume -TenantName $TenantName -TenantSpaceName $TenantSpaceName -VolumeName $VolumeName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFVolume: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **TenantSpaceName** | **String**| The Tenant Space name | 
 **VolumeName** | **String**| The Volume name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Volume**](Volume.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFVolumeById"></a>
# **Get-PSFVolumeById**
> Volume Get-PSFVolumeById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a specific Volume.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$VolumeId = "<uuid>" # String | The Volume ID
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a specific Volume.
try {
    $Result = Get-PSFVolumeById -VolumeId $VolumeId -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFVolumeById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **VolumeId** | **String**| The Volume ID | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Volume**](Volume.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFVolumePerformance"></a>
# **Get-PSFVolumePerformance**
> Performance Get-PSFVolumePerformance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Gets performance metrics of a specific Volume.

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
$VolumeName = "data-vol-3" # String | The Volume name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Gets performance metrics of a specific Volume.
try {
    $Result = Get-PSFVolumePerformance -TenantName $TenantName -TenantSpaceName $TenantSpaceName -VolumeName $VolumeName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFVolumePerformance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **TenantSpaceName** | **String**| The Tenant Space name | 
 **VolumeName** | **String**| The Volume name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Performance**](Performance.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFVolumeSpace"></a>
# **Get-PSFVolumeSpace**
> Space Get-PSFVolumeSpace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Gets space metrics of a specific Volume.

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
$VolumeName = "data-vol-3" # String | The Volume name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Gets space metrics of a specific Volume.
try {
    $Result = Get-PSFVolumeSpace -TenantName $TenantName -TenantSpaceName $TenantSpaceName -VolumeName $VolumeName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFVolumeSpace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **TenantSpaceName** | **String**| The Tenant Space name | 
 **VolumeName** | **String**| The Volume name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Space**](Space.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PSFListVolumes"></a>
# **Invoke-PSFListVolumes**
> VolumeList Invoke-PSFListVolumes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceName] <String><br>
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
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SerialNumber] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageClassId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlacementGroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionPolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ArrayId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceVolumeSnapshotId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Iqn] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Destroyed] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeRemaining] <System.Nullable[Int64]><br>

Gets a list of all Volumes.

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
$SerialNumber = "MySerialNumber" # String |  (optional)
$Size = 789 # Int64 |  (optional)
$CreatedAt = 789 # Int64 |  (optional)
$StorageClassId = "MyStorageClassId" # String |  (optional)
$PlacementGroupId = "MyPlacementGroupId" # String |  (optional)
$ProtectionPolicyId = "MyProtectionPolicyId" # String |  (optional)
$ArrayId = "MyArrayId" # String |  (optional)
$SourceVolumeSnapshotId = "MySourceVolumeSnapshotId" # String |  (optional)
$Iqn = "MyIqn" # String |  (optional)
$Destroyed = $true # Boolean |  (optional)
$TimeRemaining = 789 # Int64 |  (optional)

# Gets a list of all Volumes.
try {
    $Result = Invoke-PSFListVolumes -TenantName $TenantName -TenantSpaceName $TenantSpaceName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID -Filter $Filter -Sort $Sort -Limit $Limit -Offset $Offset -Id $Id -Name $Name -DisplayName $DisplayName -SerialNumber $SerialNumber -Size $Size -CreatedAt $CreatedAt -StorageClassId $StorageClassId -PlacementGroupId $PlacementGroupId -ProtectionPolicyId $ProtectionPolicyId -ArrayId $ArrayId -SourceVolumeSnapshotId $SourceVolumeSnapshotId -Iqn $Iqn -Destroyed $Destroyed -TimeRemaining $TimeRemaining
} catch {
    Write-Host ("Exception occurred when calling Invoke-PSFListVolumes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **TenantSpaceName** | **String**| The Tenant Space name | 
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
 **SerialNumber** | **String**|  | [optional] 
 **Size** | **Int64**|  | [optional] 
 **CreatedAt** | **Int64**|  | [optional] 
 **StorageClassId** | **String**|  | [optional] 
 **PlacementGroupId** | **String**|  | [optional] 
 **ProtectionPolicyId** | **String**|  | [optional] 
 **ArrayId** | **String**|  | [optional] 
 **SourceVolumeSnapshotId** | **String**|  | [optional] 
 **Iqn** | **String**|  | [optional] 
 **Destroyed** | **Boolean**|  | [optional] 
 **TimeRemaining** | **Int64**|  | [optional] 

### Return type

[**VolumeList**](VolumeList.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PSFQueryVolumes"></a>
# **Invoke-PSFQueryVolumes**
> VolumeList Invoke-PSFQueryVolumes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DisplayName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SerialNumber] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreatedAt] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageClassId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlacementGroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProtectionPolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ArrayId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceVolumeSnapshotId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Iqn] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Destroyed] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeRemaining] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HostAccessPolicyId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Opt-in) Get all Volumes in the org. Provide a filter to search for specific volumes.

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
$SerialNumber = "MySerialNumber" # String |  (optional)
$Size = 789 # Int64 |  (optional)
$CreatedAt = 789 # Int64 |  (optional)
$TenantSpaceId = "MyTenantSpaceId" # String |  (optional)
$TenantId = "MyTenantId" # String |  (optional)
$StorageClassId = "MyStorageClassId" # String |  (optional)
$PlacementGroupId = "MyPlacementGroupId" # String |  (optional)
$ProtectionPolicyId = "MyProtectionPolicyId" # String |  (optional)
$ArrayId = "MyArrayId" # String |  (optional)
$SourceVolumeSnapshotId = "MySourceVolumeSnapshotId" # String |  (optional)
$Iqn = "MyIqn" # String |  (optional)
$Destroyed = $true # Boolean |  (optional)
$TimeRemaining = 789 # Int64 |  (optional)
$HostAccessPolicyId = "MyHostAccessPolicyId" # String |  (optional)
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Opt-in) Get all Volumes in the org. Provide a filter to search for specific volumes.
try {
    $Result = Invoke-PSFQueryVolumes -Filter $Filter -Sort $Sort -Limit $Limit -Offset $Offset -Id $Id -Name $Name -DisplayName $DisplayName -SerialNumber $SerialNumber -Size $Size -CreatedAt $CreatedAt -TenantSpaceId $TenantSpaceId -TenantId $TenantId -StorageClassId $StorageClassId -PlacementGroupId $PlacementGroupId -ProtectionPolicyId $ProtectionPolicyId -ArrayId $ArrayId -SourceVolumeSnapshotId $SourceVolumeSnapshotId -Iqn $Iqn -Destroyed $Destroyed -TimeRemaining $TimeRemaining -HostAccessPolicyId $HostAccessPolicyId -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Invoke-PSFQueryVolumes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **SerialNumber** | **String**|  | [optional] 
 **Size** | **Int64**|  | [optional] 
 **CreatedAt** | **Int64**|  | [optional] 
 **TenantSpaceId** | **String**|  | [optional] 
 **TenantId** | **String**|  | [optional] 
 **StorageClassId** | **String**|  | [optional] 
 **PlacementGroupId** | **String**|  | [optional] 
 **ProtectionPolicyId** | **String**|  | [optional] 
 **ArrayId** | **String**|  | [optional] 
 **SourceVolumeSnapshotId** | **String**|  | [optional] 
 **Iqn** | **String**|  | [optional] 
 **Destroyed** | **Boolean**|  | [optional] 
 **TimeRemaining** | **Int64**|  | [optional] 
 **HostAccessPolicyId** | **String**|  | [optional] 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**VolumeList**](VolumeList.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PSFVolume"></a>
# **Update-PSFVolume**
> Operation Update-PSFVolume<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantSpaceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumeName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-VolumePatch] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Updates a Volume -- renaming, and resizing it; changing its Storage Class; changing its Placement Group; adding or removing host connections.

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
$VolumeName = "data-vol-3" # String | The Volume name
$NullableString = Initialize-NullableString -Value "MyValue"
$NullableSize = Initialize-NullableSize -Value 0
$NullableBoolean = Initialize-NullableBoolean -Value $false
$VolumePatch = Initialize-VolumePatch -DisplayName $NullableString -SourceVolumeSnapshotLink $NullableString -SourceLink $NullableString -Size $NullableSize -StorageClass $NullableString -PlacementGroup $NullableString -ProtectionPolicy $NullableString -HostAccessPolicies $NullableString -Destroyed $NullableBoolean # VolumePatch | 
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Updates a Volume -- renaming, and resizing it; changing its Storage Class; changing its Placement Group; adding or removing host connections.
try {
    $Result = Update-PSFVolume -TenantName $TenantName -TenantSpaceName $TenantSpaceName -VolumeName $VolumeName -VolumePatch $VolumePatch -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Update-PSFVolume: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **TenantSpaceName** | **String**| The Tenant Space name | 
 **VolumeName** | **String**| The Volume name | 
 **VolumePatch** | [**VolumePatch**](VolumePatch.md)|  | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Operation**](Operation.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

