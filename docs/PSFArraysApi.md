# PSFusion.PSFusion/Api.PSFArraysApi

All URIs are relative to *https://api.pure1.purestorage.com/fusion/api/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PSFArray**](PSFArraysApi.md#New-PSFArray) | **POST** /regions/{region_name}/availability-zones/{availability_zone_name}/arrays | (Provider) Registers an array into Pure Fusion.
[**Remove-PSFArray**](PSFArraysApi.md#Remove-PSFArray) | **DELETE** /regions/{region_name}/availability-zones/{availability_zone_name}/arrays/{array_name} | Deregister a specific array.
[**Get-PSFArray**](PSFArraysApi.md#Get-PSFArray) | **GET** /regions/{region_name}/availability-zones/{availability_zone_name}/arrays/{array_name} | (Provider) Gets a specific Array.
[**Get-PSFArrayById**](PSFArraysApi.md#Get-PSFArrayById) | **GET** /resources/arrays/{array_id} | (Provider) Gets a specific Array.
[**Get-PSFArrayPerformance**](PSFArraysApi.md#Get-PSFArrayPerformance) | **GET** /regions/{region_name}/availability-zones/{availability_zone_name}/arrays/{array_name}/performance | (Provider) Gets performance metrics of a specific Array.
[**Get-PSFArraySpace**](PSFArraysApi.md#Get-PSFArraySpace) | **GET** /regions/{region_name}/availability-zones/{availability_zone_name}/arrays/{array_name}/space | (Provider) Gets performance metrics of a specific Array.
[**Invoke-PSFListArrays**](PSFArraysApi.md#Invoke-PSFListArrays) | **GET** /regions/{region_name}/availability-zones/{availability_zone_name}/arrays | (Provider) Gets a list of all arrays registered to Pure Fusion.
[**Update-PSFArray**](PSFArraysApi.md#Update-PSFArray) | **PATCH** /regions/{region_name}/availability-zones/{availability_zone_name}/arrays/{array_name} | Updates a specific array.


<a id="New-PSFArray"></a>
# **New-PSFArray**
> Operation New-PSFArray<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ArrayPost] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Registers an array into Pure Fusion.

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
$ArrayPost = Initialize-ArrayPost -Name "MyName" -DisplayName "MyDisplayName" -ApartmentId "MyApartmentId" -HostName "MyHostName" -HardwareType "MyHardwareType" -ApplianceId "MyApplianceId" # ArrayPost | 
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Registers an array into Pure Fusion.
try {
    $Result = New-PSFArray -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -ArrayPost $ArrayPost -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling New-PSFArray: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZoneName** | **String**| The Availability Zone name | 
 **ArrayPost** | [**ArrayPost**](ArrayPost.md)|  | 
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

<a id="Remove-PSFArray"></a>
# **Remove-PSFArray**
> Operation Remove-PSFArray<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ArrayName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Deregister a specific array.

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
$ArrayName = "fa-11" # String | The Array name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Deregister a specific array.
try {
    $Result = Remove-PSFArray -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -ArrayName $ArrayName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Remove-PSFArray: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZoneName** | **String**| The Availability Zone name | 
 **ArrayName** | **String**| The Array name | 
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

<a id="Get-PSFArray"></a>
# **Get-PSFArray**
> Array Get-PSFArray<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ArrayName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Gets a specific Array.

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
$ArrayName = "fa-11" # String | The Array name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Gets a specific Array.
try {
    $Result = Get-PSFArray -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -ArrayName $ArrayName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFArray: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZoneName** | **String**| The Availability Zone name | 
 **ArrayName** | **String**| The Array name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Array**](Array.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFArrayById"></a>
# **Get-PSFArrayById**
> Array Get-PSFArrayById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ArrayId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Gets a specific Array.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ArrayId = "array-1" # String | The Array ID
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Gets a specific Array.
try {
    $Result = Get-PSFArrayById -ArrayId $ArrayId -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFArrayById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ArrayId** | **String**| The Array ID | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Array**](Array.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFArrayPerformance"></a>
# **Get-PSFArrayPerformance**
> Performance Get-PSFArrayPerformance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ArrayName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Gets performance metrics of a specific Array.

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
$ArrayName = "fa-11" # String | The Array name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Gets performance metrics of a specific Array.
try {
    $Result = Get-PSFArrayPerformance -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -ArrayName $ArrayName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFArrayPerformance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZoneName** | **String**| The Availability Zone name | 
 **ArrayName** | **String**| The Array name | 
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

<a id="Get-PSFArraySpace"></a>
# **Get-PSFArraySpace**
> Space Get-PSFArraySpace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ArrayName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Gets performance metrics of a specific Array.

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
$ArrayName = "fa-11" # String | The Array name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Gets performance metrics of a specific Array.
try {
    $Result = Get-PSFArraySpace -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -ArrayName $ArrayName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFArraySpace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZoneName** | **String**| The Availability Zone name | 
 **ArrayName** | **String**| The Array name | 
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

<a id="Invoke-PSFListArrays"></a>
# **Invoke-PSFListArrays**
> ArrayList Invoke-PSFListArrays<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Gets a list of all arrays registered to Pure Fusion.

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

# (Provider) Gets a list of all arrays registered to Pure Fusion.
try {
    $Result = Invoke-PSFListArrays -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Invoke-PSFListArrays: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**ArrayList**](ArrayList.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PSFArray"></a>
# **Update-PSFArray**
> Operation Update-PSFArray<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RegionName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AvailabilityZoneName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ArrayName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ArrayPatch] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Updates a specific array.

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
$ArrayName = "fa-11" # String | The Array name
$NullableString = Initialize-NullableString -Value "MyValue"
$NullableBoolean = Initialize-NullableBoolean -Value $false
$ArrayPatch = Initialize-ArrayPatch -DisplayName $NullableString -HostName $NullableString -MaintenanceMode $NullableBoolean -UnavailableMode $NullableBoolean # ArrayPatch | 
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Updates a specific array.
try {
    $Result = Update-PSFArray -RegionName $RegionName -AvailabilityZoneName $AvailabilityZoneName -ArrayName $ArrayName -ArrayPatch $ArrayPatch -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Update-PSFArray: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RegionName** | **String**| The Region name | 
 **AvailabilityZoneName** | **String**| The Availability Zone name | 
 **ArrayName** | **String**| The Array name | 
 **ArrayPatch** | [**ArrayPatch**](ArrayPatch.md)|  | 
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

