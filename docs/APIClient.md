# APIClient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | An immutable, globally unique, system generated identifier. | 
**Name** | **String** | The name of the resource, supplied by the user at creation, and used in the URI path of a resource. | 
**SelfLink** | **String** | The URI of the resource. | 
**DisplayName** | **String** | The display name of the resource. | [optional] 
**Issuer** | **String** | The name of API client | 
**PublicKey** | **String** | Public key in PEM format associated with the API Client | 
**LastKeyUpdate** | **Decimal** | The last time API client was updated | 
**LastUsed** | **Decimal** | The last time API client was used | 
**CreatorId** | **String** | The Id of Principal that created the API Client | 

## Examples

- Prepare the resource
```powershell
$APIClient = Initialize-PSFusionAPIClient  -Id null `
 -Name null `
 -SelfLink /object-types/name `
 -DisplayName null `
 -Issuer apikey:name:thisisnotreal `
 -PublicKey -----BEGIN RSA PUBLIC KEY-----
thisisnotreak
-----END RSA PUBLIC KEY----- `
 -LastKeyUpdate null `
 -LastUsed null `
 -CreatorId 1234
```

- Convert the resource to JSON
```powershell
$APIClient | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

