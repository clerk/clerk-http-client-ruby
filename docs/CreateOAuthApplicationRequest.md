# ClerkBackend::CreateOAuthApplicationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the new OAuth application |  |
| **callback_url** | **String** | The callback URL of the new OAuth application |  |
| **scopes** | **String** | Define the allowed scopes for the new OAuth applications that dictate the user payload of the OAuth user info endpoint. Available scopes are &#x60;profile&#x60;, &#x60;email&#x60;, &#x60;public_metadata&#x60;, &#x60;private_metadata&#x60;. Provide the requested scopes as a string, separated by spaces. | [optional][default to &#39;profile email&#39;] |
| **public** | **Boolean** | If true, this client is public and cannot securely store a client secret. Only the authorization code flow with proof key for code exchange (PKCE) may be used. Public clients cannot be updated to be confidential clients, and vice versa. | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::CreateOAuthApplicationRequest.new(
  name: null,
  callback_url: null,
  scopes: profile email public_metadata,
  public: null
)
```

