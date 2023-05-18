# PSFusion.PSFusion/Api.PSFAvailabilityZonesApi

All URIs are relative to *https://api.pure1.purestorage.com/fusion/api/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PSFAvailabilityZone**](PSFAvailabilityZonesApi.md#New-PSFAvailabilityZone) | **POST** /regions/{region_name}/availability-zones | Creates an Availability Zone.
[**Remove-PSFAvailabilityZone**](PSFAvailabilityZonesApi.md#Remove-PSFAvailabilityZone) | **DELETE** /regions/{region_name}/availability-zones/{availability_zone_name} | Deletes a specific Availability Zone.
[**Get-PSFAvailabilityZone**](PSFAvailabilityZonesApi.md#Get-PSFAvailabilityZone) | **GET** /regions/{region_name}/availability-zones/{availability_zone_name} | Gets a specific Availability Zone.
[**Get-PSFAvailabilityZoneById**](PSFAvailabilityZonesApi.md#Get-PSFAvailabilityZoneById) | **GET** /resources/availability-zones/{availability_zone_id} | Gets a specific Availability Zone.
[**Get-PSFAvailabilityZonePerformance**](PSFAvailabilityZonesApi.md#Get-PSFAvailabilityZonePerformance) | **GET** /regions/{region_name}/availability-zones/{availability_zone_name}/performance | (Provider) Gets performance metrics of a specific Availability Zone.
[**Get-PSFAvailabilityZoneSpace**](PSFAvailabilityZonesApi.md#Get-PSFAvailabilityZoneSpace) | **GET** /regions/{region_name}/availability-zones/{availability_zone_name}/space | (Provider) Gets space metrics of a specific Availability Zone.
[**Invoke-PSFListAvailabilityZones**](PSFAvailabilityZonesApi.md#Invoke-PSFListAvailabilityZones) | **GET** /regions/{region_name}/availability-zones | Gets a list of all Availability Zones.


<a id="New-PSFAvailabilityZone"></a>
# **New-PSFAvailabilityZone**
> Operation New-PSFAvailabilityZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZonePost] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Creates an Availability Zone.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RegionName = "pure-us-west" # String | The Region name
$AvailabilityZonePost = Initialize-AvailabilityZonePost -Name "MyName" -DisplayName "MyDisplayName" # AvailabilityZonePost | 
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Creates an Availability Zone.
try {
    $Result = New-PSFAvailabilityZone -RegionName $RegionName -AvailabilityZonePost $AvailabilityZonePost -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling New-PSFAvailabilityZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZonePost** | [**AvailabilityZonePost**](AvailabilityZonePost.md)|  | 
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

<a id="Remove-PSFAvailabilityZone"></a>
# **Remove-PSFAvailabilityZone**
> Operation Remove-PSFAvailabilityZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Deletes a specific Availability Zone.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RegionName = "pure-us-west" # String | The Region name
$AvailabilityZoneName = "az-1" # String | The Availability Zone name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Deletes a specific Availability Zone.
try {
    $Result = Remove-PSFAvailabilityZone -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Remove-PSFAvailabilityZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZoneName** | **String**| The Availability Zone name | 
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

<a id="Get-PSFAvailabilityZone"></a>
# **Get-PSFAvailabilityZone**
> AvailabilityZone Get-PSFAvailabilityZone<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a specific Availability Zone.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RegionName = "pure-us-west" # String | The Region name
$AvailabilityZoneName = "az-1" # String | The Availability Zone name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a specific Availability Zone.
try {
    $Result = Get-PSFAvailabilityZone -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFAvailabilityZone: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZoneName** | **String**| The Availability Zone name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**AvailabilityZone**](AvailabilityZone.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFAvailabilityZoneById"></a>
# **Get-PSFAvailabilityZoneById**
> AvailabilityZone Get-PSFAvailabilityZoneById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a specific Availability Zone.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AvailabilityZoneId = "<uuid>" # String | The Availability Zone ID
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a specific Availability Zone.
try {
    $Result = Get-PSFAvailabilityZoneById -AvailabilityZoneId $AvailabilityZoneId -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFAvailabilityZoneById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AvailabilityZoneId** | **String**| The Availability Zone ID | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**AvailabilityZone**](AvailabilityZone.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFAvailabilityZonePerformance"></a>
# **Get-PSFAvailabilityZonePerformance**
> Performance Get-PSFAvailabilityZonePerformance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Gets performance metrics of a specific Availability Zone.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RegionName = "pure-us-west" # String | The Region name
$AvailabilityZoneName = "az-1" # String | The Availability Zone name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Gets performance metrics of a specific Availability Zone.
try {
    $Result = Get-PSFAvailabilityZonePerformance -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFAvailabilityZonePerformance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZoneName** | **String**| The Availability Zone name | 
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

<a id="Get-PSFAvailabilityZoneSpace"></a>
# **Get-PSFAvailabilityZoneSpace**
> Space Get-PSFAvailabilityZoneSpace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Gets space metrics of a specific Availability Zone.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RegionName = "pure-us-west" # String | The Region name
$AvailabilityZoneName = "az-1" # String | The Availability Zone name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Gets space metrics of a specific Availability Zone.
try {
    $Result = Get-PSFAvailabilityZoneSpace -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFAvailabilityZoneSpace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZoneName** | **String**| The Availability Zone name | 
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

<a id="Invoke-PSFListAvailabilityZones"></a>
# **Invoke-PSFListAvailabilityZones**
> AvailabilityZoneList Invoke-PSFListAvailabilityZones<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a list of all Availability Zones.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RegionName = "pure-us-west" # String | The Region name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a list of all Availability Zones.
try {
    $Result = Invoke-PSFListAvailabilityZones -RegionName $RegionName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Invoke-PSFListAvailabilityZones: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**AvailabilityZoneList**](AvailabilityZoneList.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

