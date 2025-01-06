# ClerkHttpClient::TestingToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **token** | **String** | The actual token. This value is meant to be passed in the &#x60;__clerk_testing_token&#x60; query parameter with requests to the Frontend API. |  |
| **expires_at** | **Integer** | Unix timestamp of the token&#39;s expiration time.  |  |

## Example

```ruby
require 'clerk-http-client-ruby'

instance = ClerkHttpClient::TestingToken.new(
  object: null,
  token: 1713877200-c_2J2MvPu9PnXcuhbPZNao0LOXqK9A7YrnBn0HmIWxy,
  expires_at: 1713880800
)
```

