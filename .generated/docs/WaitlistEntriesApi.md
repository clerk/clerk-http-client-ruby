# Clerk::SDK.waitlist_entries

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_waitlist_entry**](WaitlistEntriesApi.md#create_waitlist_entry) | **POST** /waitlist_entries | Create a waitlist entry |
| [**delete_waitlist_entry**](WaitlistEntriesApi.md#delete_waitlist_entry) | **DELETE** /waitlist_entries/{waitlist_entry_id} | Delete a pending waitlist entry |
| [**invite_waitlist_entry**](WaitlistEntriesApi.md#invite_waitlist_entry) | **POST** /waitlist_entries/{waitlist_entry_id}/invite | Invite a waitlist entry |
| [**list_waitlist_entries**](WaitlistEntriesApi.md#list_waitlist_entries) | **GET** /waitlist_entries | List all waitlist entries |
| [**reject_waitlist_entry**](WaitlistEntriesApi.md#reject_waitlist_entry) | **POST** /waitlist_entries/{waitlist_entry_id}/reject | Reject a waitlist entry |


## create_waitlist_entry

> <WaitlistEntry> create_waitlist_entry(opts)

Create a waitlist entry

Creates a new waitlist entry for the given email address. If the email address is already on the waitlist, no new entry will be created and the existing waitlist entry will be returned.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_waitlist_entry_request: ClerkHttpClient::CreateWaitlistEntryRequest.new({email_address: 'email_address_example'}) # CreateWaitlistEntryRequest | 
}

begin
  # Create a waitlist entry
  result = Clerk::SDK.waitlist_entries.create_waitlist_entry(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.waitlist_entries->create_waitlist_entry: #{e}"
end
```

#### Using the `create_waitlist_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WaitlistEntry>, Integer, Hash)> create_waitlist_entry_with_http_info(opts)

```ruby
begin
  # Create a waitlist entry
  data, status_code, headers = Clerk::SDK.waitlist_entries.create_waitlist_entry_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WaitlistEntry>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.waitlist_entries->create_waitlist_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_waitlist_entry_request** | [**CreateWaitlistEntryRequest**](CreateWaitlistEntryRequest.md) |  | [optional] |

### Return type

[**WaitlistEntry**](WaitlistEntry.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_waitlist_entry

> <DeletedObject> delete_waitlist_entry(waitlist_entry_id)

Delete a pending waitlist entry

Delete a pending waitlist entry.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

waitlist_entry_id = 'waitlist_entry_id_example' # String | The ID of the waitlist entry to delete

begin
  # Delete a pending waitlist entry
  result = Clerk::SDK.waitlist_entries.delete_waitlist_entry(waitlist_entry_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.waitlist_entries->delete_waitlist_entry: #{e}"
end
```

#### Using the `delete_waitlist_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_waitlist_entry_with_http_info(waitlist_entry_id)

```ruby
begin
  # Delete a pending waitlist entry
  data, status_code, headers = Clerk::SDK.waitlist_entries.delete_waitlist_entry_with_http_info(waitlist_entry_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.waitlist_entries->delete_waitlist_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waitlist_entry_id** | **String** | The ID of the waitlist entry to delete |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invite_waitlist_entry

> <WaitlistEntry> invite_waitlist_entry(waitlist_entry_id, opts)

Invite a waitlist entry

Send an invite to the email address in a waitlist entry.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

waitlist_entry_id = 'waitlist_entry_id_example' # String | The ID of the waitlist entry to invite
opts = {
  invite_waitlist_entry_request: ClerkHttpClient::InviteWaitlistEntryRequest.new # InviteWaitlistEntryRequest | 
}

begin
  # Invite a waitlist entry
  result = Clerk::SDK.waitlist_entries.invite_waitlist_entry(waitlist_entry_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.waitlist_entries->invite_waitlist_entry: #{e}"
end
```

#### Using the `invite_waitlist_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WaitlistEntry>, Integer, Hash)> invite_waitlist_entry_with_http_info(waitlist_entry_id, opts)

```ruby
begin
  # Invite a waitlist entry
  data, status_code, headers = Clerk::SDK.waitlist_entries.invite_waitlist_entry_with_http_info(waitlist_entry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WaitlistEntry>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.waitlist_entries->invite_waitlist_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waitlist_entry_id** | **String** | The ID of the waitlist entry to invite |  |
| **invite_waitlist_entry_request** | [**InviteWaitlistEntryRequest**](InviteWaitlistEntryRequest.md) |  | [optional] |

### Return type

[**WaitlistEntry**](WaitlistEntry.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_waitlist_entries

> <ListWaitlistEntries200Response> list_waitlist_entries(opts)

List all waitlist entries

Retrieve a list of waitlist entries for the instance. Entries are ordered by creation date in descending order by default. Supports filtering by email address or status and pagination with limit and offset parameters.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56, # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  query: 'query_example', # String | Filter waitlist entries by `email_address` or `id`
  status: 'pending', # String | Filter waitlist entries by their status
  order_by: 'order_by_example' # String | Specify the order of results. Supported values are: - `created_at` - `email_address` - `invited_at`  Use `+` for ascending or `-` for descending order. Defaults to `-created_at`.
}

begin
  # List all waitlist entries
  result = Clerk::SDK.waitlist_entries.list_waitlist_entries(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.waitlist_entries->list_waitlist_entries: #{e}"
end
```

#### Using the `list_waitlist_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWaitlistEntries200Response>, Integer, Hash)> list_waitlist_entries_with_http_info(opts)

```ruby
begin
  # List all waitlist entries
  data, status_code, headers = Clerk::SDK.waitlist_entries.list_waitlist_entries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWaitlistEntries200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.waitlist_entries->list_waitlist_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **query** | **String** | Filter waitlist entries by &#x60;email_address&#x60; or &#x60;id&#x60; | [optional] |
| **status** | **String** | Filter waitlist entries by their status | [optional] |
| **order_by** | **String** | Specify the order of results. Supported values are: - &#x60;created_at&#x60; - &#x60;email_address&#x60; - &#x60;invited_at&#x60;  Use &#x60;+&#x60; for ascending or &#x60;-&#x60; for descending order. Defaults to &#x60;-created_at&#x60;. | [optional][default to &#39;-created_at&#39;] |

### Return type

[**ListWaitlistEntries200Response**](ListWaitlistEntries200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reject_waitlist_entry

> <WaitlistEntry> reject_waitlist_entry(waitlist_entry_id)

Reject a waitlist entry

Reject a waitlist entry.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

waitlist_entry_id = 'waitlist_entry_id_example' # String | The ID of the waitlist entry to reject

begin
  # Reject a waitlist entry
  result = Clerk::SDK.waitlist_entries.reject_waitlist_entry(waitlist_entry_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.waitlist_entries->reject_waitlist_entry: #{e}"
end
```

#### Using the `reject_waitlist_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WaitlistEntry>, Integer, Hash)> reject_waitlist_entry_with_http_info(waitlist_entry_id)

```ruby
begin
  # Reject a waitlist entry
  data, status_code, headers = Clerk::SDK.waitlist_entries.reject_waitlist_entry_with_http_info(waitlist_entry_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WaitlistEntry>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.waitlist_entries->reject_waitlist_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waitlist_entry_id** | **String** | The ID of the waitlist entry to reject |  |

### Return type

[**WaitlistEntry**](WaitlistEntry.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

