# ClerkBackend::GetOAuthAccessToken200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional] |
| **external_account_id** | **String** | External account ID | [optional] |
| **provider_user_id** | **String** | The unique ID of the user in the external provider&#39;s system | [optional] |
| **token** | **String** | The access token | [optional] |
| **provider** | **String** | The ID of the provider | [optional] |
| **public_metadata** | **Object** |  | [optional] |
| **label** | **String** |  | [optional] |
| **scopes** | **Array&lt;String&gt;** | The list of scopes that the token is valid for. Only present for OAuth 2.0 tokens. | [optional] |
| **token_secret** | **String** | The token secret. Only present for OAuth 1.0 tokens. | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::GetOAuthAccessToken200ResponseInner.new(
  object: null,
  external_account_id: null,
  provider_user_id: null,
  token: null,
  provider: null,
  public_metadata: null,
  label: null,
  scopes: null,
  token_secret: null
)
```

