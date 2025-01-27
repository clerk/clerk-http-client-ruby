# Clerk::SDK.clients

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_client**](ClientsApi.md#get_client) | **GET** /clients/{client_id} | Get a client |
| [**get_client_list**](ClientsApi.md#get_client_list) | **GET** /clients | List all clients |
| [**verify_client**](ClientsApi.md#verify_client) | **POST** /clients/verify | Verify a client |


## get_client

> <Client> get_client(client_id)

Get a client

Returns the details of a client.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

client_id = 'client_id_example' # String | Client ID.

begin
  # Get a client
  result = Clerk::SDK.clients.get_client(client_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.clients->get_client: #{e}"
end
```

#### Using the `get_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Client>, Integer, Hash)> get_client_with_http_info(client_id)

```ruby
begin
  # Get a client
  data, status_code, headers = Clerk::SDK.clients.get_client_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Client>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.clients->get_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Client ID. |  |

### Return type

[**Client**](Client.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_client_list

> <Array<Client>> get_client_list(opts)

List all clients

Returns a list of all clients. The clients are returned sorted by creation date, with the newest clients appearing first. Warning: the endpoint is being deprecated and will be removed in future versions.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14 # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # List all clients
  result = Clerk::SDK.clients.get_client_list(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.clients->get_client_list: #{e}"
end
```

#### Using the `get_client_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Client>>, Integer, Hash)> get_client_list_with_http_info(opts)

```ruby
begin
  # List all clients
  data, status_code, headers = Clerk::SDK.clients.get_client_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Client>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.clients->get_client_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**Array&lt;Client&gt;**](Client.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_client

> <Client> verify_client(opts)

Verify a client

Verifies the client in the provided token

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  verify_client_request: ClerkHttpClient::VerifyClientRequest.new # VerifyClientRequest | Parameters.
}

begin
  # Verify a client
  result = Clerk::SDK.clients.verify_client(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.clients->verify_client: #{e}"
end
```

#### Using the `verify_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Client>, Integer, Hash)> verify_client_with_http_info(opts)

```ruby
begin
  # Verify a client
  data, status_code, headers = Clerk::SDK.clients.verify_client_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Client>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.clients->verify_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verify_client_request** | [**VerifyClientRequest**](VerifyClientRequest.md) | Parameters. | [optional] |

### Return type

[**Client**](Client.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

