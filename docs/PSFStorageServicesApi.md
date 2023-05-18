# PSFusion.PSFusion/Api.PSFStorageServicesApi

All URIs are relative to *https://api.pure1.purestorage.com/fusion/api/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PSFStorageService**](PSFStorageServicesApi.md#New-PSFStorageService) | **POST** /storage-services | (Provider) Creates a Storage Service.
[**Remove-PSFStorageService**](PSFStorageServicesApi.md#Remove-PSFStorageService) | **DELETE** /storage-services/{storage_service_name} | (Provider) Deletes a Storage Service.
[**Get-PSFStorageService**](PSFStorageServicesApi.md#Get-PSFStorageService) | **GET** /storage-services/{storage_service_name} | Gets a specific Storage Service.
[**Get-PSFStorageServiceById**](PSFStorageServicesApi.md#Get-PSFStorageServiceById) | **GET** /resources/storage-services/{storage_service_id} | Gets a specific Storage Service.
[**Invoke-PSFListStorageServices**](PSFStorageServicesApi.md#Invoke-PSFListStorageServices) | **GET** /storage-services | Gets a list of all Storage Services.
[**Update-PSFStorageService**](PSFStorageServicesApi.md#Update-PSFStorageService) | **PATCH** /storage-services/{storage_service_name} | (Provider) Updates a Storage Service.


<a id="New-PSFStorageService"></a>
# **New-PSFStorageService**
> Operation New-PSFStorageService<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageServicePost] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Creates a Storage Service.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$StorageServicePost = Initialize-StorageServicePost -Name "MyName" -DisplayName "MyDisplayName" -HardwareTypes "MyHardwareTypes" # StorageServicePost | 
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Creates a Storage Service.
try {
    $Result = New-PSFStorageService -StorageServicePost $StorageServicePost -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling New-PSFStorageService: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StorageServicePost** | [**StorageServicePost**](StorageServicePost.md)|  | 
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

<a id="Remove-PSFStorageService"></a>
# **Remove-PSFStorageService**
> Operation Remove-PSFStorageService<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageServiceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Deletes a Storage Service.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$StorageServiceName = "low-latency" # String | The Storage Service name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Deletes a Storage Service.
try {
    $Result = Remove-PSFStorageService -StorageServiceName $StorageServiceName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Remove-PSFStorageService: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StorageServiceName** | **String**| The Storage Service name | 
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

<a id="Get-PSFStorageService"></a>
# **Get-PSFStorageService**
> StorageService Get-PSFStorageService<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageServiceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a specific Storage Service.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$StorageServiceName = "low-latency" # String | The Storage Service name
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a specific Storage Service.
try {
    $Result = Get-PSFStorageService -StorageServiceName $StorageServiceName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFStorageService: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StorageServiceName** | **String**| The Storage Service name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**StorageService**](StorageService.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFStorageServiceById"></a>
# **Get-PSFStorageServiceById**
> StorageService Get-PSFStorageServiceById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageServiceId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a specific Storage Service.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$StorageServiceId = "<uuid>" # String | The Storage Service ID
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a specific Storage Service.
try {
    $Result = Get-PSFStorageServiceById -StorageServiceId $StorageServiceId -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFStorageServiceById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StorageServiceId** | **String**| The Storage Service ID | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**StorageService**](StorageService.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-PSFListStorageServices"></a>
# **Invoke-PSFListStorageServices**
> StorageServiceList Invoke-PSFListStorageServices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a list of all Storage Services.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a list of all Storage Services.
try {
    $Result = Invoke-PSFListStorageServices -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Invoke-PSFListStorageServices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**StorageServiceList**](StorageServiceList.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PSFStorageService"></a>
# **Update-PSFStorageService**
> Operation Update-PSFStorageService<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageServiceName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StorageServicePatch] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

(Provider) Updates a Storage Service.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$StorageServiceName = "low-latency" # String | The Storage Service name
$NullableString = Initialize-NullableString -Value "MyValue"
$NullableStringArray = Initialize-NullableStringArray -Value "MyValue"
$StorageServicePatch = Initialize-StorageServicePatch -DisplayName $NullableString -HardwareTypes $NullableStringArray # StorageServicePatch | 
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# (Provider) Updates a Storage Service.
try {
    $Result = Update-PSFStorageService -StorageServiceName $StorageServiceName -StorageServicePatch $StorageServicePatch -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Update-PSFStorageService: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StorageServiceName** | **String**| The Storage Service name | 
 **StorageServicePatch** | [**StorageServicePatch**](StorageServicePatch.md)|  | 
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

