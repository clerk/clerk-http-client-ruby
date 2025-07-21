# ClerkHttpClient::OAuthApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **instance_id** | **String** |  |  |
| **name** | **String** |  |  |
| **client_id** | **String** |  |  |
| **client_uri** | **String** |  |  |
| **client_image_url** | **String** |  |  |
| **dynamically_registered** | **Boolean** |  |  |
| **consent_screen_enabled** | **Boolean** |  |  |
| **pkce_required** | **Boolean** |  |  |
| **public** | **Boolean** |  |  |
| **scopes** | **String** |  |  |
| **redirect_uris** | **Array&lt;String&gt;** |  |  |
| **callback_url** | **String** | Deprecated: Use redirect_uris instead.  |  |
| **authorize_url** | **String** |  |  |
| **token_fetch_url** | **String** |  |  |
| **user_info_url** | **String** |  |  |
| **discovery_url** | **String** |  |  |
| **token_introspection_url** | **String** |  |  |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::OAuthApplication.new(
  object: null,
  id: null,
  instance_id: null,
  name: null,
  client_id: null,
  client_uri: null,
  client_image_url: null,
  dynamically_registered: null,
  consent_screen_enabled: null,
  pkce_required: null,
  public: null,
  scopes: null,
  redirect_uris: null,
  callback_url: null,
  authorize_url: null,
  token_fetch_url: null,
  user_info_url: null,
  discovery_url: null,
  token_introspection_url: null,
  created_at: null,
  updated_at: null
)
```

