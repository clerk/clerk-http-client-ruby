# ClerkHttpClient::CommerceSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. |  |
| **id** | **String** | Unique identifier for the commerce subscription. |  |
| **instance_id** | **String** | The ID of the instance this subscription belongs to. |  |
| **status** | **String** | The current status of the subscription. |  |
| **payer_id** | **String** | The ID of the payer for this subscription. |  |
| **created_at** | **Integer** | Unix timestamp (milliseconds) of creation. |  |
| **updated_at** | **Integer** | Unix timestamp (milliseconds) of last update. |  |
| **active_at** | **Integer** | Unix timestamp (milliseconds) when the subscription became active. | [optional] |
| **past_due_at** | **Integer** | Unix timestamp (milliseconds) when the subscription became past due. | [optional] |
| **subscription_items** | [**Array&lt;CommerceSubscriptionItem&gt;**](CommerceSubscriptionItem.md) | Array of subscription items in this subscription. |  |
| **next_payment** | [**CommerceSubscriptionNextPayment**](CommerceSubscriptionNextPayment.md) |  | [optional] |
| **eligible_for_free_trial** | **Boolean** | Whether the payer is eligible for a free trial. | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CommerceSubscription.new(
  object: null,
  id: null,
  instance_id: null,
  status: null,
  payer_id: null,
  created_at: null,
  updated_at: null,
  active_at: null,
  past_due_at: null,
  subscription_items: null,
  next_payment: null,
  eligible_for_free_trial: null
)
```

