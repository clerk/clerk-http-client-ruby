# Clerk::SDK.billing

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**extend_billing_subscription_item_free_trial**](BillingApi.md#extend_billing_subscription_item_free_trial) | **POST** /billing/subscription_items/{subscription_item_id}/extend_free_trial | Extend free trial for a subscription item |
| [**get_organization_billing_subscription_0**](BillingApi.md#get_organization_billing_subscription_0) | **GET** /organizations/{organization_id}/billing/subscription | Retrieve an organization&#39;s billing subscription |


## extend_billing_subscription_item_free_trial

> <CommerceSubscriptionItem> extend_billing_subscription_item_free_trial(subscription_item_id, extend_free_trial_request)

Extend free trial for a subscription item

Extends the free trial period for a specific subscription item to the specified timestamp. The subscription item must be currently in a free trial period, and the plan must support free trials. The timestamp must be in the future and not more than 365 days from the end of the current trial period This operation is idempotent - repeated requests with the same timestamp will not change the trial period.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

subscription_item_id = 'subscription_item_id_example' # String | The ID of the subscription item to extend the free trial for
extend_free_trial_request = ClerkHttpClient::ExtendFreeTrialRequest.new({extend_to: Time.parse('2026-01-08T00:00Z')}) # ExtendFreeTrialRequest | Parameters for extending the free trial

begin
  # Extend free trial for a subscription item
  result = Clerk::SDK.billing.extend_billing_subscription_item_free_trial(subscription_item_id, extend_free_trial_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.billing->extend_billing_subscription_item_free_trial: #{e}"
end
```

#### Using the `extend_billing_subscription_item_free_trial_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommerceSubscriptionItem>, Integer, Hash)> extend_billing_subscription_item_free_trial_with_http_info(subscription_item_id, extend_free_trial_request)

```ruby
begin
  # Extend free trial for a subscription item
  data, status_code, headers = Clerk::SDK.billing.extend_billing_subscription_item_free_trial_with_http_info(subscription_item_id, extend_free_trial_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommerceSubscriptionItem>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.billing->extend_billing_subscription_item_free_trial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_item_id** | **String** | The ID of the subscription item to extend the free trial for |  |
| **extend_free_trial_request** | [**ExtendFreeTrialRequest**](ExtendFreeTrialRequest.md) | Parameters for extending the free trial |  |

### Return type

[**CommerceSubscriptionItem**](CommerceSubscriptionItem.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_organization_billing_subscription_0

> <CommerceSubscription> get_organization_billing_subscription_0(organization_id)

Retrieve an organization's billing subscription

Retrieves the billing subscription for the specified organization. This includes subscription details, active plans, billing information, and payment status. The subscription contains subscription items which represent the individual plans the organization is subscribed to.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

organization_id = 'organization_id_example' # String | The ID of the organization whose subscription to retrieve

begin
  # Retrieve an organization's billing subscription
  result = Clerk::SDK.billing.get_organization_billing_subscription_0(organization_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.billing->get_organization_billing_subscription_0: #{e}"
end
```

#### Using the `get_organization_billing_subscription_0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommerceSubscription>, Integer, Hash)> get_organization_billing_subscription_0_with_http_info(organization_id)

```ruby
begin
  # Retrieve an organization's billing subscription
  data, status_code, headers = Clerk::SDK.billing.get_organization_billing_subscription_0_with_http_info(organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommerceSubscription>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.billing->get_organization_billing_subscription_0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | The ID of the organization whose subscription to retrieve |  |

### Return type

[**CommerceSubscription**](CommerceSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

