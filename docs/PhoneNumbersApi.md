# ClerkHttpClient::PhoneNumbersApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_phone_number**](PhoneNumbersApi.md#create_phone_number) | **POST** /phone_numbers | Create a phone number |
| [**delete_phone_number**](PhoneNumbersApi.md#delete_phone_number) | **DELETE** /phone_numbers/{phone_number_id} | Delete a phone number |
| [**get_phone_number**](PhoneNumbersApi.md#get_phone_number) | **GET** /phone_numbers/{phone_number_id} | Retrieve a phone number |
| [**update_phone_number**](PhoneNumbersApi.md#update_phone_number) | **PATCH** /phone_numbers/{phone_number_id} | Update a phone number |


## create_phone_number

> <PhoneNumber> create_phone_number(create_phone_number_request)

Create a phone number

Create a new phone number

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::PhoneNumbersApi.new
create_phone_number_request = ClerkHttpClient::CreatePhoneNumberRequest.new # CreatePhoneNumberRequest | 

begin
  # Create a phone number
  result = api_instance.create_phone_number(create_phone_number_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling PhoneNumbersApi->create_phone_number: #{e}"
end
```

#### Using the create_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PhoneNumber>, Integer, Hash)> create_phone_number_with_http_info(create_phone_number_request)

```ruby
begin
  # Create a phone number
  data, status_code, headers = api_instance.create_phone_number_with_http_info(create_phone_number_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PhoneNumber>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling PhoneNumbersApi->create_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_phone_number_request** | [**CreatePhoneNumberRequest**](CreatePhoneNumberRequest.md) |  |  |

### Return type

[**PhoneNumber**](PhoneNumber.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_phone_number

> <DeletedObject> delete_phone_number(phone_number_id)

Delete a phone number

Delete the phone number with the given ID

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::PhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | The ID of the phone number to delete

begin
  # Delete a phone number
  result = api_instance.delete_phone_number(phone_number_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling PhoneNumbersApi->delete_phone_number: #{e}"
end
```

#### Using the delete_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_phone_number_with_http_info(phone_number_id)

```ruby
begin
  # Delete a phone number
  data, status_code, headers = api_instance.delete_phone_number_with_http_info(phone_number_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling PhoneNumbersApi->delete_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_id** | **String** | The ID of the phone number to delete |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_phone_number

> <PhoneNumber> get_phone_number(phone_number_id)

Retrieve a phone number

Returns the details of a phone number

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::PhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | The ID of the phone number to retrieve

begin
  # Retrieve a phone number
  result = api_instance.get_phone_number(phone_number_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling PhoneNumbersApi->get_phone_number: #{e}"
end
```

#### Using the get_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PhoneNumber>, Integer, Hash)> get_phone_number_with_http_info(phone_number_id)

```ruby
begin
  # Retrieve a phone number
  data, status_code, headers = api_instance.get_phone_number_with_http_info(phone_number_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PhoneNumber>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling PhoneNumbersApi->get_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_id** | **String** | The ID of the phone number to retrieve |  |

### Return type

[**PhoneNumber**](PhoneNumber.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_phone_number

> <PhoneNumber> update_phone_number(phone_number_id, update_phone_number_request)

Update a phone number

Updates a phone number

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::PhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | The ID of the phone number to update
update_phone_number_request = ClerkHttpClient::UpdatePhoneNumberRequest.new # UpdatePhoneNumberRequest | 

begin
  # Update a phone number
  result = api_instance.update_phone_number(phone_number_id, update_phone_number_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling PhoneNumbersApi->update_phone_number: #{e}"
end
```

#### Using the update_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PhoneNumber>, Integer, Hash)> update_phone_number_with_http_info(phone_number_id, update_phone_number_request)

```ruby
begin
  # Update a phone number
  data, status_code, headers = api_instance.update_phone_number_with_http_info(phone_number_id, update_phone_number_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PhoneNumber>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling PhoneNumbersApi->update_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_id** | **String** | The ID of the phone number to update |  |
| **update_phone_number_request** | [**UpdatePhoneNumberRequest**](UpdatePhoneNumberRequest.md) |  |  |

### Return type

[**PhoneNumber**](PhoneNumber.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

