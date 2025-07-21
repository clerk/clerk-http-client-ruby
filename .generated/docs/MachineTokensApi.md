# Clerk::SDK.machine_tokens

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_machine_token**](MachineTokensApi.md#create_machine_token) | **POST** /machine_tokens | Create a machine token |


## create_machine_token

> <MachineToken> create_machine_token(opts)

Create a machine token

Create a new machine token

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_machine_token_request: ClerkHttpClient::CreateMachineTokenRequest.new({machine_id: 'machine_id_example'}) # CreateMachineTokenRequest | 
}

begin
  # Create a machine token
  result = Clerk::SDK.machine_tokens.create_machine_token(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machine_tokens->create_machine_token: #{e}"
end
```

#### Using the `create_machine_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MachineToken>, Integer, Hash)> create_machine_token_with_http_info(opts)

```ruby
begin
  # Create a machine token
  data, status_code, headers = Clerk::SDK.machine_tokens.create_machine_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MachineToken>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.machine_tokens->create_machine_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_machine_token_request** | [**CreateMachineTokenRequest**](CreateMachineTokenRequest.md) |  | [optional] |

### Return type

[**MachineToken**](MachineToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

