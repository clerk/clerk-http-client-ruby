# ClerkBackend::Web3Wallet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  |  |
| **web3_wallet** | **String** |  |  |
| **verification** | [**Web3WalletVerification**](Web3WalletVerification.md) |  |  |
| **created_at** | **Integer** | Unix timestamp of creation  |  |
| **updated_at** | **Integer** | Unix timestamp of creation  |  |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::Web3Wallet.new(
  id: null,
  object: null,
  web3_wallet: null,
  verification: null,
  created_at: null,
  updated_at: null
)
```

