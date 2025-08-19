# ClerkHttpClient::CommerceSubscriptionItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. |  |
| **id** | **String** | Unique identifier for the subscription item. |  |
| **instance_id** | **String** | Unique identifier for the Clerk instance. |  |
| **status** | **String** | Current status of the subscription item. |  |
| **credit** | [**CommerceSubscriptionCreditResponse**](CommerceSubscriptionCreditResponse.md) | Credit information (only available in PaymentAttempt events). | [optional] |
| **plan_id** | **String** | Unique identifier for the associated plan. |  |
| **plan** | [**CommercePlan**](CommercePlan.md) | The associated commerce plan. |  |
| **plan_period** | **String** | The billing period for this subscription. |  |
| **payment_source_id** | **String** | Unique identifier for the payment source. |  |
| **payment_source** | [**CommercePaymentSourceResponse**](CommercePaymentSourceResponse.md) | The payment source associated with this subscription. | [optional] |
| **lifetime_paid** | [**CommerceMoneyResponse**](CommerceMoneyResponse.md) | Total amount paid over the lifetime of this subscription. | [optional] |
| **amount** | [**CommerceMoneyResponse**](CommerceMoneyResponse.md) | Current amount for this subscription. | [optional] |
| **next_invoice** | [**CommerceSubscriptionItemNextPaymentResponse**](CommerceSubscriptionItemNextPaymentResponse.md) | Information about the next invoice. | [optional] |
| **next_payment** | [**CommerceSubscriptionItemNextPaymentResponse**](CommerceSubscriptionItemNextPaymentResponse.md) | Information about the next payment. | [optional] |
| **payer_id** | **String** | Unique identifier for the payer. |  |
| **payer** | [**CommercePayerResponse**](CommercePayerResponse.md) | The payer associated with this subscription. | [optional] |
| **is_free_trial** | **Boolean** | Whether this subscription is currently on a free trial. |  |
| **period_start** | **Integer** | Unix timestamp (in milliseconds) when the current period started. | [optional] |
| **period_end** | **Integer** | Unix timestamp (in milliseconds) when the current period ends. | [optional] |
| **proration_date** | **String** | Date used for proration calculations. |  |
| **canceled_at** | **Integer** | Unix timestamp (in milliseconds) when the subscription was canceled. | [optional] |
| **past_due_at** | **Integer** | Unix timestamp (in milliseconds) when the subscription became past due. | [optional] |
| **ended_at** | **Integer** | Unix timestamp (in milliseconds) when the subscription ended. | [optional] |
| **created_at** | **Integer** | Unix timestamp (in milliseconds) when the subscription was created. |  |
| **updated_at** | **Integer** | Unix timestamp (in milliseconds) when the subscription was last updated. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CommerceSubscriptionItem.new(
  object: null,
  id: null,
  instance_id: null,
  status: null,
  credit: null,
  plan_id: null,
  plan: null,
  plan_period: null,
  payment_source_id: null,
  payment_source: null,
  lifetime_paid: null,
  amount: null,
  next_invoice: null,
  next_payment: null,
  payer_id: null,
  payer: null,
  is_free_trial: null,
  period_start: null,
  period_end: null,
  proration_date: null,
  canceled_at: null,
  past_due_at: null,
  ended_at: null,
  created_at: null,
  updated_at: null
)
```

