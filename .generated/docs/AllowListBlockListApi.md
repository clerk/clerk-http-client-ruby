# Clerk::SDK.allow_list_block_list

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_allowlist_identifier**](AllowListBlockListApi.md#create_allowlist_identifier) | **POST** /allowlist_identifiers | Add identifier to the allow-list |
| [**create_blocklist_identifier**](AllowListBlockListApi.md#create_blocklist_identifier) | **POST** /blocklist_identifiers | Add identifier to the block-list |
| [**delete_allowlist_identifier**](AllowListBlockListApi.md#delete_allowlist_identifier) | **DELETE** /allowlist_identifiers/{identifier_id} | Delete identifier from allow-list |
| [**delete_blocklist_identifier**](AllowListBlockListApi.md#delete_blocklist_identifier) | **DELETE** /blocklist_identifiers/{identifier_id} | Delete identifier from block-list |
| [**list_allowlist_identifiers**](AllowListBlockListApi.md#list_allowlist_identifiers) | **GET** /allowlist_identifiers | List all identifiers on the allow-list |
| [**list_blocklist_identifiers**](AllowListBlockListApi.md#list_blocklist_identifiers) | **GET** /blocklist_identifiers | List all identifiers on the block-list |


## create_allowlist_identifier

> <AllowlistIdentifier> create_allowlist_identifier(opts)

Add identifier to the allow-list

Create an identifier allowed to sign up to an instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_allowlist_identifier_request: ClerkHttpClient::CreateAllowlistIdentifierRequest.new({identifier: 'identifier_example'}) # CreateAllowlistIdentifierRequest | 
}

begin
  # Add identifier to the allow-list
  result = Clerk::SDK.allow_list_block_list.create_allowlist_identifier(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->create_allowlist_identifier: #{e}"
end
```

#### Using the `create_allowlist_identifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AllowlistIdentifier>, Integer, Hash)> create_allowlist_identifier_with_http_info(opts)

```ruby
begin
  # Add identifier to the allow-list
  data, status_code, headers = Clerk::SDK.allow_list_block_list.create_allowlist_identifier_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AllowlistIdentifier>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->create_allowlist_identifier_with_http_info: #{e}"
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


## create_blocklist_identifier

> <BlocklistIdentifier> create_blocklist_identifier(opts)

Add identifier to the block-list

Create an identifier that is blocked from accessing an instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_blocklist_identifier_request: ClerkHttpClient::CreateBlocklistIdentifierRequest.new({identifier: 'identifier_example'}) # CreateBlocklistIdentifierRequest | 
}

begin
  # Add identifier to the block-list
  result = Clerk::SDK.allow_list_block_list.create_blocklist_identifier(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->create_blocklist_identifier: #{e}"
end
```

#### Using the `create_blocklist_identifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlocklistIdentifier>, Integer, Hash)> create_blocklist_identifier_with_http_info(opts)

```ruby
begin
  # Add identifier to the block-list
  data, status_code, headers = Clerk::SDK.allow_list_block_list.create_blocklist_identifier_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlocklistIdentifier>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->create_blocklist_identifier_with_http_info: #{e}"
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


## delete_allowlist_identifier

> <DeletedObject> delete_allowlist_identifier(identifier_id)

Delete identifier from allow-list

Delete an identifier from the instance allow-list

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

identifier_id = 'identifier_id_example' # String | The ID of the identifier to delete from the allow-list

begin
  # Delete identifier from allow-list
  result = Clerk::SDK.allow_list_block_list.delete_allowlist_identifier(identifier_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->delete_allowlist_identifier: #{e}"
end
```

#### Using the `delete_allowlist_identifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_allowlist_identifier_with_http_info(identifier_id)

```ruby
begin
  # Delete identifier from allow-list
  data, status_code, headers = Clerk::SDK.allow_list_block_list.delete_allowlist_identifier_with_http_info(identifier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->delete_allowlist_identifier_with_http_info: #{e}"
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


## delete_blocklist_identifier

> <DeletedObject> delete_blocklist_identifier(identifier_id)

Delete identifier from block-list

Delete an identifier from the instance block-list

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

identifier_id = 'identifier_id_example' # String | The ID of the identifier to delete from the block-list

begin
  # Delete identifier from block-list
  result = Clerk::SDK.allow_list_block_list.delete_blocklist_identifier(identifier_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->delete_blocklist_identifier: #{e}"
end
```

#### Using the `delete_blocklist_identifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_blocklist_identifier_with_http_info(identifier_id)

```ruby
begin
  # Delete identifier from block-list
  data, status_code, headers = Clerk::SDK.allow_list_block_list.delete_blocklist_identifier_with_http_info(identifier_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->delete_blocklist_identifier_with_http_info: #{e}"
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


## list_allowlist_identifiers

> <Array<AllowlistIdentifier>> list_allowlist_identifiers(opts)

List all identifiers on the allow-list

Get a list of all identifiers allowed to sign up to an instance

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
  # List all identifiers on the allow-list
  result = Clerk::SDK.allow_list_block_list.list_allowlist_identifiers(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->list_allowlist_identifiers: #{e}"
end
```

#### Using the `list_allowlist_identifiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AllowlistIdentifier>>, Integer, Hash)> list_allowlist_identifiers_with_http_info(opts)

```ruby
begin
  # List all identifiers on the allow-list
  data, status_code, headers = Clerk::SDK.allow_list_block_list.list_allowlist_identifiers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AllowlistIdentifier>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->list_allowlist_identifiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paginated** | **Boolean** | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated. | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**Array&lt;AllowlistIdentifier&gt;**](AllowlistIdentifier.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_blocklist_identifiers

> <BlocklistIdentifiers> list_blocklist_identifiers

List all identifiers on the block-list

Get a list of all identifiers which are not allowed to access an instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end


begin
  # List all identifiers on the block-list
  result = Clerk::SDK.allow_list_block_list.list_blocklist_identifiers
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->list_blocklist_identifiers: #{e}"
end
```

#### Using the `list_blocklist_identifiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlocklistIdentifiers>, Integer, Hash)> list_blocklist_identifiers_with_http_info

```ruby
begin
  # List all identifiers on the block-list
  data, status_code, headers = Clerk::SDK.allow_list_block_list.list_blocklist_identifiers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlocklistIdentifiers>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.allow_list_block_list->list_blocklist_identifiers_with_http_info: #{e}"
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

