# Clerk::SDK.commerce

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_commerce_subscription_item**](CommerceApi.md#cancel_commerce_subscription_item) | **DELETE** /commerce/subscription_items/{subscription_item_id} | Cancel a subscription item |
| [**get_commerce_plan_list**](CommerceApi.md#get_commerce_plan_list) | **GET** /commerce/plans | List all commerce plans |
| [**get_commerce_subscription_item_list**](CommerceApi.md#get_commerce_subscription_item_list) | **GET** /commerce/subscription_items | List all subscription items |


## cancel_commerce_subscription_item

> <CommerceSubscriptionItem> cancel_commerce_subscription_item(subscription_item_id, opts)

Cancel a subscription item

Cancel a specific subscription item. The subscription item can be canceled immediately or at the end of the current billing period.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

subscription_item_id = 'subscription_item_id_example' # String | The ID of the subscription item to cancel
opts = {
  end_now: true # Boolean | Whether to cancel the subscription immediately (true) or at the end of the current billing period (false, default)
}

begin
  # Cancel a subscription item
  result = Clerk::SDK.commerce.cancel_commerce_subscription_item(subscription_item_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.commerce->cancel_commerce_subscription_item: #{e}"
end
```

#### Using the `cancel_commerce_subscription_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommerceSubscriptionItem>, Integer, Hash)> cancel_commerce_subscription_item_with_http_info(subscription_item_id, opts)

```ruby
begin
  # Cancel a subscription item
  data, status_code, headers = Clerk::SDK.commerce.cancel_commerce_subscription_item_with_http_info(subscription_item_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommerceSubscriptionItem>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.commerce->cancel_commerce_subscription_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_item_id** | **String** | The ID of the subscription item to cancel |  |
| **end_now** | **Boolean** | Whether to cancel the subscription immediately (true) or at the end of the current billing period (false, default) | [optional][default to false] |

### Return type

[**CommerceSubscriptionItem**](CommerceSubscriptionItem.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commerce_plan_list

> <PaginatedCommercePlanResponse> get_commerce_plan_list(opts)

List all commerce plans

Returns a list of all commerce plans for the instance. The plans are returned sorted by creation date, with the newest plans appearing first. This includes both free and paid plans. Pagination is supported.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  paginated: true, # Boolean | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated.
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56, # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  payer_type: 'user' # String | Filter plans by payer type
}

begin
  # List all commerce plans
  result = Clerk::SDK.commerce.get_commerce_plan_list(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.commerce->get_commerce_plan_list: #{e}"
end
```

#### Using the `get_commerce_plan_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCommercePlanResponse>, Integer, Hash)> get_commerce_plan_list_with_http_info(opts)

```ruby
begin
  # List all commerce plans
  data, status_code, headers = Clerk::SDK.commerce.get_commerce_plan_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCommercePlanResponse>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.commerce->get_commerce_plan_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paginated** | **Boolean** | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated. | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **payer_type** | **String** | Filter plans by payer type | [optional] |

### Return type

[**PaginatedCommercePlanResponse**](PaginatedCommercePlanResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commerce_subscription_item_list

> <PaginatedCommerceSubscriptionItemResponse> get_commerce_subscription_item_list(opts)

List all subscription items

Returns a list of all subscription items for the instance. The subscription items are returned sorted by creation date, with the newest appearing first. This includes subscriptions for both users and organizations. Pagination is supported.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  paginated: true, # Boolean | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated.
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56, # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  status: 'active', # String | Filter subscription items by status
  payer_type: 'user', # String | Filter subscription items by payer type
  plan_id: 'plan_id_example', # String | Filter subscription items by plan ID
  include_free: true, # Boolean | Whether to include free plan subscription items
  query: 'query_example' # String | Search query to filter subscription items by email, user first name, user last name, or organization name. Supports partial matching.
}

begin
  # List all subscription items
  result = Clerk::SDK.commerce.get_commerce_subscription_item_list(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.commerce->get_commerce_subscription_item_list: #{e}"
end
```

#### Using the `get_commerce_subscription_item_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCommerceSubscriptionItemResponse>, Integer, Hash)> get_commerce_subscription_item_list_with_http_info(opts)

```ruby
begin
  # List all subscription items
  data, status_code, headers = Clerk::SDK.commerce.get_commerce_subscription_item_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCommerceSubscriptionItemResponse>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.commerce->get_commerce_subscription_item_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paginated** | **Boolean** | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated. | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **status** | **String** | Filter subscription items by status | [optional] |
| **payer_type** | **String** | Filter subscription items by payer type | [optional] |
| **plan_id** | **String** | Filter subscription items by plan ID | [optional] |
| **include_free** | **Boolean** | Whether to include free plan subscription items | [optional][default to false] |
| **query** | **String** | Search query to filter subscription items by email, user first name, user last name, or organization name. Supports partial matching. | [optional] |

### Return type

[**PaginatedCommerceSubscriptionItemResponse**](PaginatedCommerceSubscriptionItemResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

