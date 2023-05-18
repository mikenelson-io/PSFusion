# PSFusion.PSFusion/Api.PSFTenantsApi

All URIs are relative to *https://api.pure1.purestorage.com/fusion/api/1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PSFTenant**](PSFTenantsApi.md#New-PSFTenant) | **POST** /tenants | Creates a Tenant.
[**Remove-PSFTenant**](PSFTenantsApi.md#Remove-PSFTenant) | **DELETE** /tenants/{tenant_name} | Deletes a specific Tenant.
[**Get-PSFTenant**](PSFTenantsApi.md#Get-PSFTenant) | **GET** /tenants/{tenant_name} | Gets a specific Tenant.
[**Get-PSFTenantById**](PSFTenantsApi.md#Get-PSFTenantById) | **GET** /resources/tenants/{tenant_id} | Gets a specific Tenant.
[**Get-PSFTenantPerformance**](PSFTenantsApi.md#Get-PSFTenantPerformance) | **GET** /tenants/{tenant_name}/performance | Gets performance metrics of a specific Tenant.
[**Get-PSFTenantsSpace**](PSFTenantsApi.md#Get-PSFTenantsSpace) | **GET** /tenants/{tenant_name}/space | Gets space metrics of a specific Tenant.
[**Invoke-PSFListTenants**](PSFTenantsApi.md#Invoke-PSFListTenants) | **GET** /tenants | Gets a list of all Tenants.
[**Update-PSFTenant**](PSFTenantsApi.md#Update-PSFTenant) | **PATCH** /tenants/{tenant_name} | Updates a Tenant.


<a id="New-PSFTenant"></a>
# **New-PSFTenant**
> Operation New-PSFTenant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantPost] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Creates a Tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$TenantPost = Initialize-TenantPost -Name "MyName" -DisplayName "MyDisplayName" # TenantPost | 
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Creates a Tenant.
try {
    $Result = New-PSFTenant -TenantPost $TenantPost -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling New-PSFTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantPost** | [**TenantPost**](TenantPost.md)|  | 
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

<a id="Remove-PSFTenant"></a>
# **Remove-PSFTenant**
> Operation Remove-PSFTenant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Deletes a specific Tenant.

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
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Deletes a specific Tenant.
try {
    $Result = Remove-PSFTenant -TenantName $TenantName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Remove-PSFTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
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

<a id="Get-PSFTenant"></a>
# **Get-PSFTenant**
> Tenant Get-PSFTenant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a specific Tenant.

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
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a specific Tenant.
try {
    $Result = Get-PSFTenant -TenantName $TenantName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Tenant**](Tenant.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFTenantById"></a>
# **Get-PSFTenantById**
> Tenant Get-PSFTenantById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a specific Tenant.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: accessToken
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

# Configure OAuth2 access token for authorization: oauth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$TenantId = "<uuid>" # String | The Tenant ID
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets a specific Tenant.
try {
    $Result = Get-PSFTenantById -TenantId $TenantId -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFTenantById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantId** | **String**| The Tenant ID | 
 **XRequestID** | **String**| The Request ID supplied with the request, used to perform operations idempotently. | [optional] 
 **Authorization** | **String**| Access token (in JWT format) required to use any API endpoint. | [optional] 
 **XCorrelationID** | **String**| The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. | [optional] 

### Return type

[**Tenant**](Tenant.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PSFTenantPerformance"></a>
# **Get-PSFTenantPerformance**
> Performance Get-PSFTenantPerformance<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets performance metrics of a specific Tenant.

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
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets performance metrics of a specific Tenant.
try {
    $Result = Get-PSFTenantPerformance -TenantName $TenantName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFTenantPerformance: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
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

<a id="Get-PSFTenantsSpace"></a>
# **Get-PSFTenantsSpace**
> Space Get-PSFTenantsSpace<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets space metrics of a specific Tenant.

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
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Gets space metrics of a specific Tenant.
try {
    $Result = Get-PSFTenantsSpace -TenantName $TenantName -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Get-PSFTenantsSpace: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
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

<a id="Invoke-PSFListTenants"></a>
# **Invoke-PSFListTenants**
> TenantList Invoke-PSFListTenants<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Gets a list of all Tenants.

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

# Gets a list of all Tenants.
try {
    $Result = Invoke-PSFListTenants -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Invoke-PSFListTenants: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**TenantList**](TenantList.md) (PSCustomObject)

### Authorization

[accessToken](../README.md#accessToken), [oauth](../README.md#oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PSFTenant"></a>
# **Update-PSFTenant**
> Operation Update-PSFTenant<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TenantPatch] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XRequestID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Authorization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCorrelationID] <String><br>

Updates a Tenant.

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
$NullableString = Initialize-NullableString -Value "MyValue"
$TenantPatch = Initialize-TenantPatch -DisplayName $NullableString # TenantPatch | 
$XRequestID = "MyXRequestID" # String | The Request ID supplied with the request, used to perform operations idempotently. (optional)
$Authorization = "MyAuthorization" # String | Access token (in JWT format) required to use any API endpoint. (optional)
$XCorrelationID = "MyXCorrelationID" # String | The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow. (optional)

# Updates a Tenant.
try {
    $Result = Update-PSFTenant -TenantName $TenantName -TenantPatch $TenantPatch -XRequestID $XRequestID -Authorization $Authorization -XCorrelationID $XCorrelationID
} catch {
    Write-Host ("Exception occurred when calling Update-PSFTenant: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TenantName** | **String**| The Tenant name | 
 **TenantPatch** | [**TenantPatch**](TenantPatch.md)|  | 
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

