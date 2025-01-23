# ClerkHttpClient::CreateAllowlistIdentifierRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | The identifier to be added in the allow-list. This can be an email address, a phone number or a web3 wallet. |  |
| **notify** | **Boolean** | This flag denotes whether the given identifier will receive an invitation to join the application. Note that this only works for email address and phone number identifiers. | [optional][default to false] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CreateAllowlistIdentifierRequest.new(
  identifier: null,
  notify: null
)
```

