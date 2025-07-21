# ClerkHttpClient::OAuthAccessTokenInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **external_account_id** | **String** | External account ID |  |
| **provider_user_id** | **String** | The unique ID of the user in the external provider&#39;s system |  |
| **token** | **String** | The access token |  |
| **expires_at** | **Integer** | Unix timestamp of the access token expiration. |  |
| **provider** | **String** | The ID of the provider |  |
| **public_metadata** | **Hash&lt;String, Object&gt;** |  |  |
| **label** | **String** |  |  |
| **scopes** | **Array&lt;String&gt;** | The list of scopes that the token is valid for. Only present for OAuth 2.0 tokens. | [optional] |
| **token_secret** | **String** | The token secret. Only present for OAuth 1.0 tokens. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::OAuthAccessTokenInner.new(
  object: null,
  external_account_id: null,
  provider_user_id: null,
  token: null,
  expires_at: null,
  provider: null,
  public_metadata: null,
  label: null,
  scopes: null,
  token_secret: null
)
```

