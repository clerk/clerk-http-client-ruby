# ClerkHttpClient::AllowListBlockListApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create**](AllowListBlockListApi.md#create) | **POST** /allowlist_identifiers | Add identifier to the allow-list |
| [**create**](AllowListBlockListApi.md#create) | **POST** /blocklist_identifiers | Add identifier to the block-list |
| [**delete**](AllowListBlockListApi.md#delete) | **DELETE** /allowlist_identifiers/{identifier_id} | Delete identifier from allow-list |
| [**delete**](AllowListBlockListApi.md#delete) | **DELETE** /blocklist_identifiers/{identifier_id} | Delete identifier from block-list |
| [**all**](AllowListBlockListApi.md#all) | **GET** /allowlist_identifiers | List all identifiers on the allow-list |
| [**all**](AllowListBlockListApi.md#all) | **GET** /blocklist_identifiers | List all identifiers on the block-list |


## create

> <AllowlistIdentifier> create_allowlist_identifier(opts)

Add identifier to the allow-list

Create an identifier allowed to sign up to an instance

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::AllowListBlockListApi.new
opts = {
  create_allowlist_identifier_request: ClerkHttpClient::CreateAllowlistIdentifierRequest.new({identifier: 'identifier_example'}) # CreateAllowlistIdentifierRequest | 
}

begin
  # Add identifier to the allow-list
  result = sdk.create(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->create: #{e}"
end
```

#### Using the `create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AllowlistIdentifier>, Integer, Hash)> create_allowlist_identifier_with_http_info(opts)

```ruby
begin
  # Add identifier to the allow-list
  data, status_code, headers = sdk.create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AllowlistIdentifier>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_allowlist_identifier_request** | [**CreateAllowlistIdentifierRequest**](CreateAllowlistIdentifierRequest.md) |  | [optional] |

### Return type

[**AllowlistIdentifier**](AllowlistIdentifier.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create

> <BlocklistIdentifier> create_blocklist_identifier(opts)

Add identifier to the block-list

Create an identifier that is blocked from accessing an instance

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::AllowListBlockListApi.new
opts = {
  create_blocklist_identifier_request: ClerkHttpClient::CreateBlocklistIdentifierRequest.new({identifier: 'identifier_example'}) # CreateBlocklistIdentifierRequest | 
}

begin
  # Add identifier to the block-list
  result = sdk.create(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->create: #{e}"
end
```

#### Using the `create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlocklistIdentifier>, Integer, Hash)> create_blocklist_identifier_with_http_info(opts)

```ruby
begin
  # Add identifier to the block-list
  data, status_code, headers = sdk.create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlocklistIdentifier>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_blocklist_identifier_request** | [**CreateBlocklistIdentifierRequest**](CreateBlocklistIdentifierRequest.md) |  | [optional] |

### Return type

[**BlocklistIdentifier**](BlocklistIdentifier.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete

> <DeletedObject> delete_allowlist_identifier(identifier_id)

Delete identifier from allow-list

Delete an identifier from the instance allow-list

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::AllowListBlockListApi.new
identifier_id = 'identifier_id_example' # String | The ID of the identifier to delete from the allow-list

begin
  # Delete identifier from allow-list
  result = sdk.delete(identifier_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->delete: #{e}"
end
```

#### Using the `delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_allowlist_identifier_with_http_info(identifier_id)

```ruby
begin
  # Delete identifier from allow-list
  data, status_code, headers = sdk.delete_with_http_info(identifier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier_id** | **String** | The ID of the identifier to delete from the allow-list |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete

> <DeletedObject> delete_blocklist_identifier(identifier_id)

Delete identifier from block-list

Delete an identifier from the instance block-list

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::AllowListBlockListApi.new
identifier_id = 'identifier_id_example' # String | The ID of the identifier to delete from the block-list

begin
  # Delete identifier from block-list
  result = sdk.delete(identifier_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->delete: #{e}"
end
```

#### Using the `delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_blocklist_identifier_with_http_info(identifier_id)

```ruby
begin
  # Delete identifier from block-list
  data, status_code, headers = sdk.delete_with_http_info(identifier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier_id** | **String** | The ID of the identifier to delete from the block-list |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## all

> <Array<AllowlistIdentifier>> list_allowlist_identifiers

List all identifiers on the allow-list

Get a list of all identifiers allowed to sign up to an instance

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::AllowListBlockListApi.new

begin
  # List all identifiers on the allow-list
  result = sdk.all
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->all: #{e}"
end
```

#### Using the `all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AllowlistIdentifier>>, Integer, Hash)> list_allowlist_identifiers_with_http_info

```ruby
begin
  # List all identifiers on the allow-list
  data, status_code, headers = sdk.all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AllowlistIdentifier>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->all_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AllowlistIdentifier&gt;**](AllowlistIdentifier.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## all

> <BlocklistIdentifiers> list_blocklist_identifiers

List all identifiers on the block-list

Get a list of all identifiers which are not allowed to access an instance

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::AllowListBlockListApi.new

begin
  # List all identifiers on the block-list
  result = sdk.all
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->all: #{e}"
end
```

#### Using the `all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlocklistIdentifiers>, Integer, Hash)> list_blocklist_identifiers_with_http_info

```ruby
begin
  # List all identifiers on the block-list
  data, status_code, headers = sdk.all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlocklistIdentifiers>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling AllowListBlockListApi->all_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BlocklistIdentifiers**](BlocklistIdentifiers.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

