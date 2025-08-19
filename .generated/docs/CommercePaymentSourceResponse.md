# ClerkHttpClient::CommercePaymentSourceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. |  |
| **id** | **String** | Unique identifier for the payment source. |  |
| **payer_id** | **String** | Unique identifier for the payer. |  |
| **payment_method** | **String** | The payment method type. |  |
| **is_default** | **Boolean** | Whether this is the default payment source for the payer. | [optional] |
| **gateway** | **String** | The payment gateway. |  |
| **gateway_external_id** | **String** | External ID in the payment gateway. |  |
| **gateway_external_account_id** | **String** | External account ID in the payment gateway. | [optional] |
| **last4** | **String** | Last 4 digits of the card (for card payment sources). |  |
| **status** | **String** | Status of the payment source. |  |
| **wallet_type** | **String** | Type of wallet (if applicable). |  |
| **card_type** | **String** | Type of card (if applicable). |  |
| **expiry_year** | **Integer** | Card expiration year (for card payment sources). | [optional] |
| **expiry_month** | **Integer** | Card expiration month (for card payment sources). | [optional] |
| **created_at** | **Integer** | Unix timestamp (in milliseconds) when the payment source was created. |  |
| **updated_at** | **Integer** | Unix timestamp (in milliseconds) when the payment source was last updated. |  |
| **is_removable** | **Boolean** | Whether this payment source can be removed. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CommercePaymentSourceResponse.new(
  object: null,
  id: null,
  payer_id: null,
  payment_method: null,
  is_default: null,
  gateway: null,
  gateway_external_id: null,
  gateway_external_account_id: null,
  last4: null,
  status: null,
  wallet_type: null,
  card_type: null,
  expiry_year: null,
  expiry_month: null,
  created_at: null,
  updated_at: null,
  is_removable: null
)
```

