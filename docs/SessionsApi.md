# ClerkHttpClient::SessionsApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_session_token_from_template**](SessionsApi.md#create_session_token_from_template) | **POST** /sessions/{session_id}/tokens/{template_name} | Create a session token from a jwt template |
| [**get_session**](SessionsApi.md#get_session) | **GET** /sessions/{session_id} | Retrieve a session |
| [**get_session_list**](SessionsApi.md#get_session_list) | **GET** /sessions | List all sessions |
| [**revoke_session**](SessionsApi.md#revoke_session) | **POST** /sessions/{session_id}/revoke | Revoke a session |
| [**verify_session**](SessionsApi.md#verify_session) | **POST** /sessions/{session_id}/verify | Verify a session |


## create_session_token_from_template

> <CreateSessionTokenFromTemplate200Response> create_session_token_from_template(session_id, template_name)

Create a session token from a jwt template

Creates a JSON Web Token(JWT) based on a session and a JWT Template name defined for your instance

### Examples

```ruby
require 'time'
require 'clerk-http-client'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::SessionsApi.new
session_id = 'session_id_example' # String | The ID of the session
template_name = 'template_name_example' # String | The name of the JWT Template defined in your instance (e.g. `custom_hasura`).

begin
  # Create a session token from a jwt template
  result = api_instance.create_session_token_from_template(session_id, template_name)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SessionsApi->create_session_token_from_template: #{e}"
end
```

#### Using the create_session_token_from_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSessionTokenFromTemplate200Response>, Integer, Hash)> create_session_token_from_template_with_http_info(session_id, template_name)

```ruby
begin
  # Create a session token from a jwt template
  data, status_code, headers = api_instance.create_session_token_from_template_with_http_info(session_id, template_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSessionTokenFromTemplate200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SessionsApi->create_session_token_from_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The ID of the session |  |
| **template_name** | **String** | The name of the JWT Template defined in your instance (e.g. &#x60;custom_hasura&#x60;). |  |

### Return type

[**CreateSessionTokenFromTemplate200Response**](CreateSessionTokenFromTemplate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_session

> <Session> get_session(session_id)

Retrieve a session

Retrieve the details of a session

### Examples

```ruby
require 'time'
require 'clerk-http-client'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::SessionsApi.new
session_id = 'session_id_example' # String | The ID of the session

begin
  # Retrieve a session
  result = api_instance.get_session(session_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SessionsApi->get_session: #{e}"
end
```

#### Using the get_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Session>, Integer, Hash)> get_session_with_http_info(session_id)

```ruby
begin
  # Retrieve a session
  data, status_code, headers = api_instance.get_session_with_http_info(session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Session>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SessionsApi->get_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The ID of the session |  |

### Return type

[**Session**](Session.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_session_list

> <Array<Session>> get_session_list(opts)

List all sessions

Returns a list of all sessions. The sessions are returned sorted by creation date, with the newest sessions appearing first. **Deprecation Notice (2024-01-01):** All parameters were initially considered optional, however moving forward at least one of `client_id` or `user_id` parameters should be provided.

### Examples

```ruby
require 'time'
require 'clerk-http-client'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::SessionsApi.new
opts = {
  client_id: 'client_id_example', # String | List sessions for the given client
  user_id: 'user_id_example', # String | List sessions for the given user
  status: 'abandoned', # String | Filter sessions by the provided status
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14 # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # List all sessions
  result = api_instance.get_session_list(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SessionsApi->get_session_list: #{e}"
end
```

#### Using the get_session_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Session>>, Integer, Hash)> get_session_list_with_http_info(opts)

```ruby
begin
  # List all sessions
  data, status_code, headers = api_instance.get_session_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Session>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SessionsApi->get_session_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | List sessions for the given client | [optional] |
| **user_id** | **String** | List sessions for the given user | [optional] |
| **status** | **String** | Filter sessions by the provided status | [optional] |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**Array&lt;Session&gt;**](Session.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke_session

> <Session> revoke_session(session_id)

Revoke a session

Sets the status of a session as \"revoked\", which is an unauthenticated state. In multi-session mode, a revoked session will still be returned along with its client object, however the user will need to sign in again.

### Examples

```ruby
require 'time'
require 'clerk-http-client'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::SessionsApi.new
session_id = 'session_id_example' # String | The ID of the session

begin
  # Revoke a session
  result = api_instance.revoke_session(session_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SessionsApi->revoke_session: #{e}"
end
```

#### Using the revoke_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Session>, Integer, Hash)> revoke_session_with_http_info(session_id)

```ruby
begin
  # Revoke a session
  data, status_code, headers = api_instance.revoke_session_with_http_info(session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Session>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SessionsApi->revoke_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The ID of the session |  |

### Return type

[**Session**](Session.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_session

> <Session> verify_session(session_id, opts)

Verify a session

Returns the session if it is authenticated, otherwise returns an error. WARNING: This endpoint is deprecated and will be removed in future versions. We strongly recommend switching to networkless verification using short-lived session tokens,          which is implemented transparently in all recent SDK versions (e.g. [NodeJS SDK](https://clerk.com/docs/backend-requests/handling/nodejs#clerk-express-require-auth)).          For more details on how networkless verification works, refer to our [Session Tokens documentation](https://clerk.com/docs/backend-requests/resources/session-tokens).

### Examples

```ruby
require 'time'
require 'clerk-http-client'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::SessionsApi.new
session_id = 'session_id_example' # String | The ID of the session
opts = {
  verify_session_request: ClerkHttpClient::VerifySessionRequest.new # VerifySessionRequest | Parameters.
}

begin
  # Verify a session
  result = api_instance.verify_session(session_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SessionsApi->verify_session: #{e}"
end
```

#### Using the verify_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Session>, Integer, Hash)> verify_session_with_http_info(session_id, opts)

```ruby
begin
  # Verify a session
  data, status_code, headers = api_instance.verify_session_with_http_info(session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Session>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling SessionsApi->verify_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The ID of the session |  |
| **verify_session_request** | [**VerifySessionRequest**](VerifySessionRequest.md) | Parameters. | [optional] |

### Return type

[**Session**](Session.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

