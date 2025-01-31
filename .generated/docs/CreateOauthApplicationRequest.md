# ClerkHttpClient::CreateOAuthApplicationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the new OAuth application |  |
| **callback_url** | **String** | The callback URL of the new OAuth application | [optional] |
| **scopes** | **String** | Define the allowed scopes for the new OAuth applications that dictate the user payload of the OAuth user info endpoint. Available scopes are &#x60;profile&#x60;, &#x60;email&#x60;, &#x60;public_metadata&#x60;, &#x60;private_metadata&#x60;. Provide the requested scopes as a string, separated by spaces. | [optional][default to &#39;profile email&#39;] |
| **public** | **Boolean** | If true, this client is public and you can use the Proof Key of Code Exchange (PKCE) flow. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateOAuthApplicationRequest.new(
  name: null,
  callback_url: null,
  scopes: profile email public_metadata,
  public: null
)
```

