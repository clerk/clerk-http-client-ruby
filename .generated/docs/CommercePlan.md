# ClerkHttpClient::CommercePlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value. |  |
| **id** | **String** | Unique identifier for the commerce plan. |  |
| **name** | **String** | The name of the commerce plan. |  |
| **fee** | [**CommerceMoneyResponse**](CommerceMoneyResponse.md) |  |  |
| **annual_monthly_fee** | [**CommerceMoneyResponse**](CommerceMoneyResponse.md) |  |  |
| **annual_fee** | [**CommerceMoneyResponse**](CommerceMoneyResponse.md) |  |  |
| **amount** | **Integer** | The amount in cents for the plan. |  |
| **amount_formatted** | **String** | The formatted amount as a string (e.g., \&quot;$49.99\&quot;). |  |
| **annual_monthly_amount** | **Integer** | The monthly amount in cents when billed annually. |  |
| **annual_monthly_amount_formatted** | **String** | The formatted annual monthly amount as a string. |  |
| **annual_amount** | **Integer** | The total annual amount in cents. |  |
| **annual_amount_formatted** | **String** | The formatted annual amount as a string. |  |
| **currency_symbol** | **String** | The currency symbol (e.g., \&quot;$\&quot;). |  |
| **currency** | **String** | The currency code (e.g., \&quot;USD\&quot;). |  |
| **description** | **String** | The description of the commerce plan. |  |
| **product_id** | **String** | The ID of the product this plan belongs to. |  |
| **is_default** | **Boolean** | Whether this is the default plan. |  |
| **is_recurring** | **Boolean** | Whether this is a recurring plan. |  |
| **publicly_visible** | **Boolean** | Whether this plan is publicly visible. |  |
| **has_base_fee** | **Boolean** | Whether this plan has a base fee. |  |
| **payer_type** | **Array&lt;String&gt;** | The types of payers that can use this plan. |  |
| **for_payer_type** | **String** | The payer type this plan is designed for. |  |
| **slug** | **String** | The URL-friendly slug for the plan. |  |
| **avatar_url** | **String** | The URL of the plan&#39;s avatar image. |  |
| **period** | **String** | The billing period for the plan. |  |
| **interval** | **Integer** | The billing interval. |  |
| **features** | [**Array&lt;FeatureResponse&gt;**](FeatureResponse.md) | The features included in this plan. |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CommercePlan.new(
  object: null,
  id: null,
  name: null,
  fee: null,
  annual_monthly_fee: null,
  annual_fee: null,
  amount: null,
  amount_formatted: null,
  annual_monthly_amount: null,
  annual_monthly_amount_formatted: null,
  annual_amount: null,
  annual_amount_formatted: null,
  currency_symbol: null,
  currency: null,
  description: null,
  product_id: null,
  is_default: null,
  is_recurring: null,
  publicly_visible: null,
  has_base_fee: null,
  payer_type: null,
  for_payer_type: null,
  slug: null,
  avatar_url: null,
  period: null,
  interval: null,
  features: null
)
```

