# ClerkHttpClient::CreateOAuthApplicationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the new OAuth application. Max length: 256 |  |
| **redirect_uris** | **Array&lt;String&gt;** | An array of redirect URIs of the new OAuth application | [optional] |
| **callback_url** | **String** | The callback URL of the new OAuth application | [optional] |
| **scopes** | **String** | Define the allowed scopes for the new OAuth applications that dictate the user payload of the OAuth user info endpoint. Available scopes are &#x60;profile&#x60;, &#x60;email&#x60;, &#x60;public_metadata&#x60;, &#x60;private_metadata&#x60;. Provide the requested scopes as a string, separated by spaces. | [optional][default to &#39;profile email&#39;] |
| **consent_screen_enabled** | **Boolean** | True to enable a consent screen to display in the authentication flow. | [optional][default to true] |
| **pkce_required** | **Boolean** | True to require the Proof Key of Code Exchange (PKCE) flow. | [optional][default to false] |
| **public** | **Boolean** | If true, this client is public and you can use the Proof Key of Code Exchange (PKCE) flow. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateOAuthApplicationRequest.new(
  name: null,
  redirect_uris: null,
  callback_url: null,
  scopes: profile email public_metadata,
  consent_screen_enabled: null,
  pkce_required: null,
  public: null
)
```

