# Clerk::SDK.sessions

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_session**](SessionsApi.md#create_session) | **POST** /sessions | Create a new active session |
| [**create_session_token**](SessionsApi.md#create_session_token) | **POST** /sessions/{session_id}/tokens | Create a session token |
| [**create_session_token_from_template**](SessionsApi.md#create_session_token_from_template) | **POST** /sessions/{session_id}/tokens/{template_name} | Create a session token from a jwt template |
| [**get_session**](SessionsApi.md#get_session) | **GET** /sessions/{session_id} | Retrieve a session |
| [**get_session_list**](SessionsApi.md#get_session_list) | **GET** /sessions | List all sessions |
| [**refresh_session**](SessionsApi.md#refresh_session) | **POST** /sessions/{session_id}/refresh | Refresh a session |
| [**revoke_session**](SessionsApi.md#revoke_session) | **POST** /sessions/{session_id}/revoke | Revoke a session |
| [**verify_session**](SessionsApi.md#verify_session) | **POST** /sessions/{session_id}/verify | Verify a session |


## create_session

> <Session> create_session(opts)

Create a new active session

Create a new active session for the provided user ID.  **This operation is intended only for use in testing, and is not available for production instances.** If you are looking to generate a user session from the backend, we recommend using the [Sign-in Tokens](https://clerk.com/docs/reference/backend-api/tag/Sign-in-Tokens#operation/CreateSignInToken) resource instead.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  create_session_request: ClerkHttpClient::CreateSessionRequest.new({user_id: 'user_id_example'}) # CreateSessionRequest | 
}

begin
  # Create a new active session
  result = Clerk::SDK.sessions.create_session(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->create_session: #{e}"
end
```

#### Using the `create_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Session>, Integer, Hash)> create_session_with_http_info(opts)

```ruby
begin
  # Create a new active session
  data, status_code, headers = Clerk::SDK.sessions.create_session_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Session>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->create_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_session_request** | [**CreateSessionRequest**](CreateSessionRequest.md) |  | [optional] |

### Return type

[**Session**](Session.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_session_token

> <CreateSessionToken200Response> create_session_token(session_id, opts)

Create a session token

Creates a session JSON Web Token (JWT) based on a session.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

session_id = 'session_id_example' # String | The ID of the session
opts = {
  create_session_token_request: ClerkHttpClient::CreateSessionTokenRequest.new # CreateSessionTokenRequest | 
}

begin
  # Create a session token
  result = Clerk::SDK.sessions.create_session_token(session_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->create_session_token: #{e}"
end
```

#### Using the `create_session_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSessionToken200Response>, Integer, Hash)> create_session_token_with_http_info(session_id, opts)

```ruby
begin
  # Create a session token
  data, status_code, headers = Clerk::SDK.sessions.create_session_token_with_http_info(session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSessionToken200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->create_session_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The ID of the session |  |
| **create_session_token_request** | [**CreateSessionTokenRequest**](CreateSessionTokenRequest.md) |  | [optional] |

### Return type

[**CreateSessionToken200Response**](CreateSessionToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_session_token_from_template

> <CreateSessionToken200Response> create_session_token_from_template(session_id, template_name, opts)

Create a session token from a jwt template

Creates a JSON Web Token(JWT) based on a session and a JWT Template name defined for your instance

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

session_id = 'session_id_example' # String | The ID of the session
template_name = 'template_name_example' # String | The name of the JWT Template defined in your instance (e.g. `custom_hasura`).
opts = {
  create_session_token_from_template_request: ClerkHttpClient::CreateSessionTokenFromTemplateRequest.new # CreateSessionTokenFromTemplateRequest | 
}

begin
  # Create a session token from a jwt template
  result = Clerk::SDK.sessions.create_session_token_from_template(session_id, template_name, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->create_session_token_from_template: #{e}"
end
```

#### Using the `create_session_token_from_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSessionToken200Response>, Integer, Hash)> create_session_token_from_template_with_http_info(session_id, template_name, opts)

```ruby
begin
  # Create a session token from a jwt template
  data, status_code, headers = Clerk::SDK.sessions.create_session_token_from_template_with_http_info(session_id, template_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSessionToken200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->create_session_token_from_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The ID of the session |  |
| **template_name** | **String** | The name of the JWT Template defined in your instance (e.g. &#x60;custom_hasura&#x60;). |  |
| **create_session_token_from_template_request** | [**CreateSessionTokenFromTemplateRequest**](CreateSessionTokenFromTemplateRequest.md) |  | [optional] |

### Return type

[**CreateSessionToken200Response**](CreateSessionToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_session

> <Session> get_session(session_id)

Retrieve a session

Retrieve the details of a session

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

session_id = 'session_id_example' # String | The ID of the session

begin
  # Retrieve a session
  result = Clerk::SDK.sessions.get_session(session_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->get_session: #{e}"
end
```

#### Using the `get_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Session>, Integer, Hash)> get_session_with_http_info(session_id)

```ruby
begin
  # Retrieve a session
  data, status_code, headers = Clerk::SDK.sessions.get_session_with_http_info(session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Session>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->get_session_with_http_info: #{e}"
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
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

opts = {
  client_id: 'client_id_example', # String | List sessions for the given client
  user_id: 'user_id_example', # String | List sessions for the given user
  status: 'abandoned', # String | Filter sessions by the provided status
  paginated: true, # Boolean | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated.
  limit: 56, # Integer | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 56 # Integer | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # List all sessions
  result = Clerk::SDK.sessions.get_session_list(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->get_session_list: #{e}"
end
```

#### Using the `get_session_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Session>>, Integer, Hash)> get_session_list_with_http_info(opts)

```ruby
begin
  # List all sessions
  data, status_code, headers = Clerk::SDK.sessions.get_session_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Session>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->get_session_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | List sessions for the given client | [optional] |
| **user_id** | **String** | List sessions for the given user | [optional] |
| **status** | **String** | Filter sessions by the provided status | [optional] |
| **paginated** | **Boolean** | Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated. | [optional] |
| **limit** | **Integer** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Integer** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**Array&lt;Session&gt;**](Session.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refresh_session

> <SessionRefresh> refresh_session(session_id, opts)

Refresh a session

Refreshes a session by creating a new session token. A 401 is returned when there are validation errors, which signals the SDKs to fall back to the handshake flow.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

session_id = 'session_id_example' # String | The ID of the session
opts = {
  refresh_session_request: ClerkHttpClient::RefreshSessionRequest.new({expired_token: 'expired_token_example', refresh_token: 'refresh_token_example', request_origin: 'request_origin_example'}) # RefreshSessionRequest | Refresh session parameters
}

begin
  # Refresh a session
  result = Clerk::SDK.sessions.refresh_session(session_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->refresh_session: #{e}"
end
```

#### Using the `refresh_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SessionRefresh>, Integer, Hash)> refresh_session_with_http_info(session_id, opts)

```ruby
begin
  # Refresh a session
  data, status_code, headers = Clerk::SDK.sessions.refresh_session_with_http_info(session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SessionRefresh>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->refresh_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The ID of the session |  |
| **refresh_session_request** | [**RefreshSessionRequest**](RefreshSessionRequest.md) | Refresh session parameters | [optional] |

### Return type

[**SessionRefresh**](SessionRefresh.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## revoke_session

> <Session> revoke_session(session_id)

Revoke a session

Sets the status of a session as \"revoked\", which is an unauthenticated state. In multi-session mode, a revoked session will still be returned along with its client object, however the user will need to sign in again.

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

session_id = 'session_id_example' # String | The ID of the session

begin
  # Revoke a session
  result = Clerk::SDK.sessions.revoke_session(session_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->revoke_session: #{e}"
end
```

#### Using the `revoke_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Session>, Integer, Hash)> revoke_session_with_http_info(session_id)

```ruby
begin
  # Revoke a session
  data, status_code, headers = Clerk::SDK.sessions.revoke_session_with_http_info(session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Session>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->revoke_session_with_http_info: #{e}"
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

Returns the session if it is authenticated; otherwise, returns an error. WARNING: This endpoint is deprecated and will be removed in future versions. We strongly recommend switching to networkless verification using short-lived session tokens,          which is implemented transparently in all recent SDK versions (e.g. [NodeJS SDK](https://clerk.com/docs/backend-requests/handling/nodejs#clerk-express-require-auth)).          For more details on how networkless verification works, refer to our [Session Tokens documentation](https://clerk.com/docs/backend-requests/resources/session-tokens).

### Examples

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

session_id = 'session_id_example' # String | The ID of the session
opts = {
  verify_session_request: ClerkHttpClient::VerifySessionRequest.new # VerifySessionRequest | Parameters.
}

begin
  # Verify a session
  result = Clerk::SDK.sessions.verify_session(session_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->verify_session: #{e}"
end
```

#### Using the `verify_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Session>, Integer, Hash)> verify_session_with_http_info(session_id, opts)

```ruby
begin
  # Verify a session
  data, status_code, headers = Clerk::SDK.sessions.verify_session_with_http_info(session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Session>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling Clerk::SDK.sessions->verify_session_with_http_info: #{e}"
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

