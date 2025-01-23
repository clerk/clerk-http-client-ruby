# ClerkHttpClient::JWTTemplatesApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create**](JWTTemplatesApi.md#create) | **POST** /jwt_templates | Create a JWT template |
| [**delete**](JWTTemplatesApi.md#delete) | **DELETE** /jwt_templates/{template_id} | Delete a Template |
| [**find**](JWTTemplatesApi.md#find) | **GET** /jwt_templates/{template_id} | Retrieve a template |
| [**all**](JWTTemplatesApi.md#all) | **GET** /jwt_templates | List all templates |
| [**update**](JWTTemplatesApi.md#update) | **PATCH** /jwt_templates/{template_id} | Update a JWT template |


## create

> <JWTTemplate> create_jwt_template(opts)

Create a JWT template

Create a new JWT template

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::JWTTemplatesApi.new
opts = {
  create_jwt_template_request: ClerkHttpClient::CreateJWTTemplateRequest.new # CreateJWTTemplateRequest | 
}

begin
  # Create a JWT template
  result = sdk.create(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWTTemplatesApi->create: #{e}"
end
```

#### Using the `create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JWTTemplate>, Integer, Hash)> create_jwt_template_with_http_info(opts)

```ruby
begin
  # Create a JWT template
  data, status_code, headers = sdk.create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JWTTemplate>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWTTemplatesApi->create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_jwt_template_request** | [**CreateJWTTemplateRequest**](CreateJWTTemplateRequest.md) |  | [optional] |

### Return type

[**JWTTemplate**](JWTTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete

> <DeletedObject> delete_jwt_template(template_id)

Delete a Template



### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::JWTTemplatesApi.new
template_id = 'template_id_example' # String | JWT Template ID

begin
  # Delete a Template
  result = sdk.delete(template_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWTTemplatesApi->delete: #{e}"
end
```

#### Using the `delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_jwt_template_with_http_info(template_id)

```ruby
begin
  # Delete a Template
  data, status_code, headers = sdk.delete_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWTTemplatesApi->delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | JWT Template ID |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find

> <JWTTemplate> get_jwt_template(template_id)

Retrieve a template

Retrieve the details of a given JWT template

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::JWTTemplatesApi.new
template_id = 'template_id_example' # String | JWT Template ID

begin
  # Retrieve a template
  result = sdk.find(template_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWTTemplatesApi->find: #{e}"
end
```

#### Using the `find_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JWTTemplate>, Integer, Hash)> get_jwt_template_with_http_info(template_id)

```ruby
begin
  # Retrieve a template
  data, status_code, headers = sdk.find_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JWTTemplate>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWTTemplatesApi->find_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | JWT Template ID |  |

### Return type

[**JWTTemplate**](JWTTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## all

> <Array<JWTTemplate>> list_jwt_templates

List all templates

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::JWTTemplatesApi.new

begin
  # List all templates
  result = sdk.all
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWTTemplatesApi->all: #{e}"
end
```

#### Using the `all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<JWTTemplate>>, Integer, Hash)> list_jwt_templates_with_http_info

```ruby
begin
  # List all templates
  data, status_code, headers = sdk.all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<JWTTemplate>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWTTemplatesApi->all_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;JWTTemplate&gt;**](JWTTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update

> <JWTTemplate> update_jwt_template(template_id, opts)

Update a JWT template

Updates an existing JWT template

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::JWTTemplatesApi.new
template_id = 'template_id_example' # String | The ID of the JWT template to update
opts = {
  create_jwt_template_request: ClerkHttpClient::CreateJWTTemplateRequest.new # CreateJWTTemplateRequest | 
}

begin
  # Update a JWT template
  result = sdk.update(template_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWTTemplatesApi->update: #{e}"
end
```

#### Using the `update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JWTTemplate>, Integer, Hash)> update_jwt_template_with_http_info(template_id, opts)

```ruby
begin
  # Update a JWT template
  data, status_code, headers = sdk.update_with_http_info(template_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JWTTemplate>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling JWTTemplatesApi->update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | The ID of the JWT template to update |  |
| **create_jwt_template_request** | [**CreateJWTTemplateRequest**](CreateJWTTemplateRequest.md) |  | [optional] |

### Return type

[**JWTTemplate**](JWTTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

