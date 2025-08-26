# Clerk::SDK.billing

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_organization_billing_subscription_0**](BillingApi.md#get_organization_billing_subscription_0) | **GET** /organizations/{organization_id}/billing/subscription | Retrieve an organization&#39;s billing subscription |


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

