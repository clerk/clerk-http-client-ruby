# ClerkHttpClient::EmailAddressesApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_email_address**](EmailAddressesApi.md#create_email_address) | **POST** /email_addresses | Create an email address |
| [**delete_email_address**](EmailAddressesApi.md#delete_email_address) | **DELETE** /email_addresses/{email_address_id} | Delete an email address |
| [**get_email_address**](EmailAddressesApi.md#get_email_address) | **GET** /email_addresses/{email_address_id} | Retrieve an email address |
| [**update_email_address**](EmailAddressesApi.md#update_email_address) | **PATCH** /email_addresses/{email_address_id} | Update an email address |


## create_email_address

> <EmailAddress> create_email_address(create_email_address_request)

Create an email address

Create a new email address

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::EmailAddressesApi.new
create_email_address_request = ClerkHttpClient::CreateEmailAddressRequest.new # CreateEmailAddressRequest | 

begin
  # Create an email address
  result = api_instance.create_email_address(create_email_address_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailAddressesApi->create_email_address: #{e}"
end
```

#### Using the create_email_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailAddress>, Integer, Hash)> create_email_address_with_http_info(create_email_address_request)

```ruby
begin
  # Create an email address
  data, status_code, headers = api_instance.create_email_address_with_http_info(create_email_address_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailAddress>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailAddressesApi->create_email_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_email_address_request** | [**CreateEmailAddressRequest**](CreateEmailAddressRequest.md) |  |  |

### Return type

[**EmailAddress**](EmailAddress.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_email_address

> <DeletedObject> delete_email_address(email_address_id)

Delete an email address

Delete the email address with the given ID

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::EmailAddressesApi.new
email_address_id = 'email_address_id_example' # String | The ID of the email address to delete

begin
  # Delete an email address
  result = api_instance.delete_email_address(email_address_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailAddressesApi->delete_email_address: #{e}"
end
```

#### Using the delete_email_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_email_address_with_http_info(email_address_id)

```ruby
begin
  # Delete an email address
  data, status_code, headers = api_instance.delete_email_address_with_http_info(email_address_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailAddressesApi->delete_email_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address_id** | **String** | The ID of the email address to delete |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_address

> <EmailAddress> get_email_address(email_address_id)

Retrieve an email address

Returns the details of an email address.

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::EmailAddressesApi.new
email_address_id = 'email_address_id_example' # String | The ID of the email address to retrieve

begin
  # Retrieve an email address
  result = api_instance.get_email_address(email_address_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailAddressesApi->get_email_address: #{e}"
end
```

#### Using the get_email_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailAddress>, Integer, Hash)> get_email_address_with_http_info(email_address_id)

```ruby
begin
  # Retrieve an email address
  data, status_code, headers = api_instance.get_email_address_with_http_info(email_address_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailAddress>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailAddressesApi->get_email_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address_id** | **String** | The ID of the email address to retrieve |  |

### Return type

[**EmailAddress**](EmailAddress.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_email_address

> <EmailAddress> update_email_address(email_address_id, update_email_address_request)

Update an email address

Updates an email address.

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::EmailAddressesApi.new
email_address_id = 'email_address_id_example' # String | The ID of the email address to update
update_email_address_request = ClerkHttpClient::UpdateEmailAddressRequest.new # UpdateEmailAddressRequest | 

begin
  # Update an email address
  result = api_instance.update_email_address(email_address_id, update_email_address_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailAddressesApi->update_email_address: #{e}"
end
```

#### Using the update_email_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailAddress>, Integer, Hash)> update_email_address_with_http_info(email_address_id, update_email_address_request)

```ruby
begin
  # Update an email address
  data, status_code, headers = api_instance.update_email_address_with_http_info(email_address_id, update_email_address_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailAddress>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailAddressesApi->update_email_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address_id** | **String** | The ID of the email address to update |  |
| **update_email_address_request** | [**UpdateEmailAddressRequest**](UpdateEmailAddressRequest.md) |  |  |

### Return type

[**EmailAddress**](EmailAddress.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

