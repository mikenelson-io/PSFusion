# APIClientPost
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PublicKey** | **String** | Public key in PEM format associated with the API Client | 
**DisplayName** | **String** | The display name of the API Client | 

## Examples

- Prepare the resource
```powershell
$APIClientPost = Initialize-PSFusionAPIClientPost  -PublicKey -----BEGIN RSA PUBLIC KEY-----
thisisnotreak
-----END RSA PUBLIC KEY----- `
 -DisplayName The best API Client
```

- Convert the resource to JSON
```powershell
$APIClientPost | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

