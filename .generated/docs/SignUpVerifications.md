# ClerkHttpClient::SignUpVerifications

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address** | [**SignUpVerification**](SignUpVerification.md) |  |  |
| **phone_number** | [**SignUpVerification**](SignUpVerification.md) |  |  |
| **web3_wallet** | [**SignUpVerification**](SignUpVerification.md) |  |  |
| **external_account** | **Object** |  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::SignUpVerifications.new(
  email_address: null,
  phone_number: null,
  web3_wallet: null,
  external_account: null
)
```

