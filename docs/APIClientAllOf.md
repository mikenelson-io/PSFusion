# APIClientAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issuer** | **String** | The name of API client | 
**PublicKey** | **String** | Public key in PEM format associated with the API Client | 
**LastKeyUpdate** | **Decimal** | The last time API client was updated | 
**LastUsed** | **Decimal** | The last time API client was used | 
**CreatorId** | **String** | The Id of Principal that created the API Client | 

## Examples

- Prepare the resource
```powershell
$APIClientAllOf = Initialize-PSFusionAPIClientAllOf  -Issuer apikey:name:thisisnotreal `
 -PublicKey -----BEGIN RSA PUBLIC KEY-----
thisisnotreak
-----END RSA PUBLIC KEY----- `
 -LastKeyUpdate null `
 -LastUsed null `
 -CreatorId 1234
```

- Convert the resource to JSON
```powershell
$APIClientAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

