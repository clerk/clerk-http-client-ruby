# Clerk::SDK.commerce

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_commerce_plan_list**](CommerceApi.md#get_commerce_plan_list) | **GET** /commerce/plans | List all commerce plans |


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
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
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

### Return type

[**PaginatedCommercePlanResponse**](PaginatedCommercePlanResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

