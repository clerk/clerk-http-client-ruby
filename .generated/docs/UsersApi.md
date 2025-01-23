# ClerkHttpClient::UsersApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ban**](UsersApi.md#ban) | **POST** /users/{user_id}/ban | Ban a user |
| [**create**](UsersApi.md#create) | **POST** /users | Create a new user |
| [**create_totp**](UsersApi.md#create_totp) | **POST** /users/{user_id}/totp | Create a TOTP for a user |
| [**delete_backup_code**](UsersApi.md#delete_backup_code) | **DELETE** /users/{user_id}/backup_code | Disable all user&#39;s Backup codes |
| [**delete_external_account**](UsersApi.md#delete_external_account) | **DELETE** /users/{user_id}/external_accounts/{external_account_id} | Delete External Account |
| [**delete_totp**](UsersApi.md#delete_totp) | **DELETE** /users/{user_id}/totp | Delete all the user&#39;s TOTPs |
| [**delete**](UsersApi.md#delete) | **DELETE** /users/{user_id} | Delete a user |
| [**delete_profile_image**](UsersApi.md#delete_profile_image) | **DELETE** /users/{user_id}/profile_image | Delete user profile image |
| [**disable_mfa**](UsersApi.md#disable_mfa) | **DELETE** /users/{user_id}/mfa | Disable a user&#39;s MFA methods |
| [**oauth_access_token**](UsersApi.md#oauth_access_token) | **GET** /users/{user_id}/oauth_access_tokens/{provider} | Retrieve the OAuth access token of a user |
| [**find**](UsersApi.md#find) | **GET** /users/{user_id} | Retrieve a user |
| [**all**](UsersApi.md#all) | **GET** /users | List all users |
| [**count**](UsersApi.md#count) | **GET** /users/count | Count users |
| [**lock**](UsersApi.md#lock) | **POST** /users/{user_id}/lock | Lock a user |
| [**update_profile_image**](UsersApi.md#update_profile_image) | **POST** /users/{user_id}/profile_image | Set user profile image |
| [**unban**](UsersApi.md#unban) | **POST** /users/{user_id}/unban | Unban a user |
| [**unlock**](UsersApi.md#unlock) | **POST** /users/{user_id}/unlock | Unlock a user |
| [**update**](UsersApi.md#update) | **PATCH** /users/{user_id} | Update a user |
| [**update_metadata**](UsersApi.md#update_metadata) | **PATCH** /users/{user_id}/metadata | Merge and update a user&#39;s metadata |
| [**delete_passkey**](UsersApi.md#delete_passkey) | **DELETE** /users/{user_id}/passkeys/{passkey_identification_id} | Delete a user passkey |
| [**delete_web3_wallet**](UsersApi.md#delete_web3_wallet) | **DELETE** /users/{user_id}/web3_wallets/{web3_wallet_identification_id} | Delete a user web3 wallet |
| [**organization_invitations**](UsersApi.md#organization_invitations) | **GET** /users/{user_id}/organization_invitations | Retrieve all invitations for a user |
| [**organization_memberships**](UsersApi.md#organization_memberships) | **GET** /users/{user_id}/organization_memberships | Retrieve all memberships for a user |
| [**verify_password**](UsersApi.md#verify_password) | **POST** /users/{user_id}/verify_password | Verify the password of a user |
| [**verify_totp**](UsersApi.md#verify_totp) | **POST** /users/{user_id}/verify_totp | Verify a TOTP or backup code for a user |


## ban

> <User> ban_user(user_id)

Ban a user

Marks the given user as banned, which means that all their sessions are revoked and they are not allowed to sign in again.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user to ban

begin
  # Ban a user
  result = sdk.ban(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->ban: #{e}"
end
```

#### Using the `ban_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> ban_user_with_http_info(user_id)

```ruby
begin
  # Ban a user
  data, status_code, headers = sdk.ban_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->ban_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user to ban |  |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create

> <User> create_user(create_user_request)

Create a new user

Creates a new user. Your user management settings determine how you should setup your user model.  Any email address and phone number created using this method will be marked as verified.  Note: If you are performing a migration, check out our guide on [zero downtime migrations](https://clerk.com/docs/deployments/migrate-overview).  A rate limit rule of 20 requests per 10 seconds is applied to this endpoint.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
create_user_request = ClerkHttpClient::CreateUserRequest.new # CreateUserRequest | 

begin
  # Create a new user
  result = sdk.create(create_user_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->create: #{e}"
end
```

#### Using the `create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> create_user_with_http_info(create_user_request)

```ruby
begin
  # Create a new user
  data, status_code, headers = sdk.create_with_http_info(create_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_user_request** | [**CreateUserRequest**](CreateUserRequest.md) |  |  |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_totp

> <TOTP> create_user_totp(user_id)

Create a TOTP for a user

Creates a TOTP (Time-based One-Time Password) for a given user, returning both the TOTP secret and the URI. 

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user for whom the TOTP is being created.

begin
  # Create a TOTP for a user
  result = sdk.create_totp(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->create_totp: #{e}"
end
```

#### Using the `create_totp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TOTP>, Integer, Hash)> create_user_totp_with_http_info(user_id)

```ruby
begin
  # Create a TOTP for a user
  data, status_code, headers = sdk.create_totp_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TOTP>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->create_totp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user for whom the TOTP is being created. |  |

### Return type

[**TOTP**](TOTP.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_backup_code

> <DisableMFA200Response> delete_backup_code(user_id)

Disable all user's Backup codes

Disable all of a user's backup codes.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user whose backup codes are to be deleted.

begin
  # Disable all user's Backup codes
  result = sdk.delete_backup_code(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_backup_code: #{e}"
end
```

#### Using the `delete_backup_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisableMFA200Response>, Integer, Hash)> delete_backup_code_with_http_info(user_id)

```ruby
begin
  # Disable all user's Backup codes
  data, status_code, headers = sdk.delete_backup_code_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisableMFA200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_backup_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user whose backup codes are to be deleted. |  |

### Return type

[**DisableMFA200Response**](DisableMFA200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_external_account

> <DeletedObject> delete_external_account(user_id, external_account_id)

Delete External Account

Delete an external account by ID.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user's external account
external_account_id = 'external_account_id_example' # String | The ID of the external account to delete

begin
  # Delete External Account
  result = sdk.delete_external_account(user_id, external_account_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_external_account: #{e}"
end
```

#### Using the `delete_external_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_external_account_with_http_info(user_id, external_account_id)

```ruby
begin
  # Delete External Account
  data, status_code, headers = sdk.delete_external_account_with_http_info(user_id, external_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_external_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user&#39;s external account |  |
| **external_account_id** | **String** | The ID of the external account to delete |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_totp

> <DisableMFA200Response> delete_totp(user_id)

Delete all the user's TOTPs

Deletes all of the user's TOTPs.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user whose TOTPs are to be deleted

begin
  # Delete all the user's TOTPs
  result = sdk.delete_totp(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_totp: #{e}"
end
```

#### Using the `delete_totp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisableMFA200Response>, Integer, Hash)> delete_totp_with_http_info(user_id)

```ruby
begin
  # Delete all the user's TOTPs
  data, status_code, headers = sdk.delete_totp_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisableMFA200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_totp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user whose TOTPs are to be deleted |  |

### Return type

[**DisableMFA200Response**](DisableMFA200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete

> <DeletedObject> delete_user(user_id)

Delete a user

Delete the specified user

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user to delete

begin
  # Delete a user
  result = sdk.delete(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete: #{e}"
end
```

#### Using the `delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> delete_user_with_http_info(user_id)

```ruby
begin
  # Delete a user
  data, status_code, headers = sdk.delete_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user to delete |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_profile_image

> <User> delete_user_profile_image(user_id)

Delete user profile image

Delete a user's profile image

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user to delete the profile image for

begin
  # Delete user profile image
  result = sdk.delete_profile_image(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_profile_image: #{e}"
end
```

#### Using the `delete_profile_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> delete_user_profile_image_with_http_info(user_id)

```ruby
begin
  # Delete user profile image
  data, status_code, headers = sdk.delete_profile_image_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_profile_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user to delete the profile image for |  |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## disable_mfa

> <DisableMFA200Response> disable_mfa(user_id)

Disable a user's MFA methods

Disable all of a user's MFA methods (e.g. OTP sent via SMS, TOTP on their authenticator app) at once.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user whose MFA methods are to be disabled

begin
  # Disable a user's MFA methods
  result = sdk.disable_mfa(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->disable_mfa: #{e}"
end
```

#### Using the `disable_mfa_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisableMFA200Response>, Integer, Hash)> disable_mfa_with_http_info(user_id)

```ruby
begin
  # Disable a user's MFA methods
  data, status_code, headers = sdk.disable_mfa_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisableMFA200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->disable_mfa_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user whose MFA methods are to be disabled |  |

### Return type

[**DisableMFA200Response**](DisableMFA200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## oauth_access_token

> <Array<GetOAuthAccessToken200ResponseInner>> get_o_auth_access_token(user_id, provider)

Retrieve the OAuth access token of a user

Fetch the corresponding OAuth access token for a user that has previously authenticated with a particular OAuth provider. For OAuth 2.0, if the access token has expired and we have a corresponding refresh token, the access token will be refreshed transparently the new one will be returned.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user for which to retrieve the OAuth access token
provider = 'provider_example' # String | The ID of the OAuth provider (e.g. `oauth_google`)

begin
  # Retrieve the OAuth access token of a user
  result = sdk.oauth_access_token(user_id, provider)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->oauth_access_token: #{e}"
end
```

#### Using the `oauth_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetOAuthAccessToken200ResponseInner>>, Integer, Hash)> get_o_auth_access_token_with_http_info(user_id, provider)

```ruby
begin
  # Retrieve the OAuth access token of a user
  data, status_code, headers = sdk.oauth_access_token_with_http_info(user_id, provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetOAuthAccessToken200ResponseInner>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->oauth_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user for which to retrieve the OAuth access token |  |
| **provider** | **String** | The ID of the OAuth provider (e.g. &#x60;oauth_google&#x60;) |  |

### Return type

[**Array&lt;GetOAuthAccessToken200ResponseInner&gt;**](GetOAuthAccessToken200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find

> <User> get_user(user_id)

Retrieve a user

Retrieve the details of a user

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user to retrieve

begin
  # Retrieve a user
  result = sdk.find(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->find: #{e}"
end
```

#### Using the `find_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_with_http_info(user_id)

```ruby
begin
  # Retrieve a user
  data, status_code, headers = sdk.find_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->find_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user to retrieve |  |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## all

> <Array<User>> get_user_list(opts)

List all users

Returns a list of all users. The users are returned sorted by creation date, with the newest users appearing first.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
opts = {
  email_address: ['inner_example'], # Array<String> | Returns users with the specified email addresses. Accepts up to 100 email addresses. Any email addresses not found are ignored.
  phone_number: ['inner_example'], # Array<String> | Returns users with the specified phone numbers. Accepts up to 100 phone numbers. Any phone numbers not found are ignored.
  external_id: ['inner_example'], # Array<String> | Returns users with the specified external ids. For each external id, the `+` and `-` can be prepended to the id, which denote whether the respective external id should be included or excluded from the result set. Accepts up to 100 external ids. Any external ids not found are ignored.
  username: ['inner_example'], # Array<String> | Returns users with the specified usernames. Accepts up to 100 usernames. Any usernames not found are ignored.
  web3_wallet: ['inner_example'], # Array<String> | Returns users with the specified web3 wallet addresses. Accepts up to 100 web3 wallet addresses. Any web3 wallet addressed not found are ignored.
  user_id: ['inner_example'], # Array<String> | Returns users with the user ids specified. For each user id, the `+` and `-` can be prepended to the id, which denote whether the respective user id should be included or excluded from the result set. Accepts up to 100 user ids. Any user ids not found are ignored.
  organization_id: ['inner_example'], # Array<String> | Returns users that have memberships to the given organizations. For each organization id, the `+` and `-` can be prepended to the id, which denote whether the respective organization should be included or excluded from the result set. Accepts up to 100 organization ids.
  query: 'query_example', # String | Returns users that match the given query. For possible matches, we check the email addresses, phone numbers, usernames, web3 wallets, user ids, first and last names. The query value doesn't need to match the exact value you are looking for, it is capable of partial matches as well.
  last_active_at_since: 1700690400000, # Integer | Returns users that had session activity since the given date, with day precision. Providing a value with higher precision than day will result in an error. Example: use 1700690400000 to retrieve users that had session activity from 2023-11-23 until the current day.
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14, # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  order_by: 'order_by_example' # String | Allows to return users in a particular order. At the moment, you can order the returned users by their `created_at`,`updated_at`,`email_address`,`web3wallet`,`first_name`,`last_name`,`phone_number`,`username`,`last_active_at`,`last_sign_in_at`. In order to specify the direction, you can use the `+/-` symbols prepended in the property to order by. For example, if you want users to be returned in descending order according to their `created_at` property, you can use `-created_at`. If you don't use `+` or `-`, then `+` is implied. We only support one `order_by` parameter, and if multiple `order_by` parameters are provided, we will only keep the first one. For example, if you pass `order_by=username&order_by=created_at`, we will consider only the first `order_by` parameter, which is `username`. The `created_at` parameter will be ignored in this case.
}

begin
  # List all users
  result = sdk.all(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->all: #{e}"
end
```

#### Using the `all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<User>>, Integer, Hash)> get_user_list_with_http_info(opts)

```ruby
begin
  # List all users
  data, status_code, headers = sdk.all_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<User>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->all_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address** | [**Array&lt;String&gt;**](String.md) | Returns users with the specified email addresses. Accepts up to 100 email addresses. Any email addresses not found are ignored. | [optional] |
| **phone_number** | [**Array&lt;String&gt;**](String.md) | Returns users with the specified phone numbers. Accepts up to 100 phone numbers. Any phone numbers not found are ignored. | [optional] |
| **external_id** | [**Array&lt;String&gt;**](String.md) | Returns users with the specified external ids. For each external id, the &#x60;+&#x60; and &#x60;-&#x60; can be prepended to the id, which denote whether the respective external id should be included or excluded from the result set. Accepts up to 100 external ids. Any external ids not found are ignored. | [optional] |
| **username** | [**Array&lt;String&gt;**](String.md) | Returns users with the specified usernames. Accepts up to 100 usernames. Any usernames not found are ignored. | [optional] |
| **web3_wallet** | [**Array&lt;String&gt;**](String.md) | Returns users with the specified web3 wallet addresses. Accepts up to 100 web3 wallet addresses. Any web3 wallet addressed not found are ignored. | [optional] |
| **user_id** | [**Array&lt;String&gt;**](String.md) | Returns users with the user ids specified. For each user id, the &#x60;+&#x60; and &#x60;-&#x60; can be prepended to the id, which denote whether the respective user id should be included or excluded from the result set. Accepts up to 100 user ids. Any user ids not found are ignored. | [optional] |
| **organization_id** | [**Array&lt;String&gt;**](String.md) | Returns users that have memberships to the given organizations. For each organization id, the &#x60;+&#x60; and &#x60;-&#x60; can be prepended to the id, which denote whether the respective organization should be included or excluded from the result set. Accepts up to 100 organization ids. | [optional] |
| **query** | **String** | Returns users that match the given query. For possible matches, we check the email addresses, phone numbers, usernames, web3 wallets, user ids, first and last names. The query value doesn&#39;t need to match the exact value you are looking for, it is capable of partial matches as well. | [optional] |
| **last_active_at_since** | **Integer** | Returns users that had session activity since the given date, with day precision. Providing a value with higher precision than day will result in an error. Example: use 1700690400000 to retrieve users that had session activity from 2023-11-23 until the current day. | [optional] |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **order_by** | **String** | Allows to return users in a particular order. At the moment, you can order the returned users by their &#x60;created_at&#x60;,&#x60;updated_at&#x60;,&#x60;email_address&#x60;,&#x60;web3wallet&#x60;,&#x60;first_name&#x60;,&#x60;last_name&#x60;,&#x60;phone_number&#x60;,&#x60;username&#x60;,&#x60;last_active_at&#x60;,&#x60;last_sign_in_at&#x60;. In order to specify the direction, you can use the &#x60;+/-&#x60; symbols prepended in the property to order by. For example, if you want users to be returned in descending order according to their &#x60;created_at&#x60; property, you can use &#x60;-created_at&#x60;. If you don&#39;t use &#x60;+&#x60; or &#x60;-&#x60;, then &#x60;+&#x60; is implied. We only support one &#x60;order_by&#x60; parameter, and if multiple &#x60;order_by&#x60; parameters are provided, we will only keep the first one. For example, if you pass &#x60;order_by&#x3D;username&amp;order_by&#x3D;created_at&#x60;, we will consider only the first &#x60;order_by&#x60; parameter, which is &#x60;username&#x60;. The &#x60;created_at&#x60; parameter will be ignored in this case. | [optional][default to &#39;-created_at&#39;] |

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## count

> <TotalCount> get_users_count(opts)

Count users

Returns a total count of all users that match the given filtering criteria.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
opts = {
  email_address: ['inner_example'], # Array<String> | Counts users with the specified email addresses. Accepts up to 100 email addresses. Any email addresses not found are ignored.
  phone_number: ['inner_example'], # Array<String> | Counts users with the specified phone numbers. Accepts up to 100 phone numbers. Any phone numbers not found are ignored.
  external_id: ['inner_example'], # Array<String> | Counts users with the specified external ids. Accepts up to 100 external ids. Any external ids not found are ignored.
  username: ['inner_example'], # Array<String> | Counts users with the specified usernames. Accepts up to 100 usernames. Any usernames not found are ignored.
  web3_wallet: ['inner_example'], # Array<String> | Counts users with the specified web3 wallet addresses. Accepts up to 100 web3 wallet addresses. Any web3 wallet addressed not found are ignored.
  user_id: ['inner_example'], # Array<String> | Counts users with the user ids specified. Accepts up to 100 user ids. Any user ids not found are ignored.
  query: 'query_example' # String | Counts users that match the given query. For possible matches, we check the email addresses, phone numbers, usernames, web3 wallets, user ids, first and last names. The query value doesn't need to match the exact value you are looking for, it is capable of partial matches as well.
}

begin
  # Count users
  result = sdk.count(opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->count: #{e}"
end
```

#### Using the `count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TotalCount>, Integer, Hash)> get_users_count_with_http_info(opts)

```ruby
begin
  # Count users
  data, status_code, headers = sdk.count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TotalCount>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_address** | [**Array&lt;String&gt;**](String.md) | Counts users with the specified email addresses. Accepts up to 100 email addresses. Any email addresses not found are ignored. | [optional] |
| **phone_number** | [**Array&lt;String&gt;**](String.md) | Counts users with the specified phone numbers. Accepts up to 100 phone numbers. Any phone numbers not found are ignored. | [optional] |
| **external_id** | [**Array&lt;String&gt;**](String.md) | Counts users with the specified external ids. Accepts up to 100 external ids. Any external ids not found are ignored. | [optional] |
| **username** | [**Array&lt;String&gt;**](String.md) | Counts users with the specified usernames. Accepts up to 100 usernames. Any usernames not found are ignored. | [optional] |
| **web3_wallet** | [**Array&lt;String&gt;**](String.md) | Counts users with the specified web3 wallet addresses. Accepts up to 100 web3 wallet addresses. Any web3 wallet addressed not found are ignored. | [optional] |
| **user_id** | [**Array&lt;String&gt;**](String.md) | Counts users with the user ids specified. Accepts up to 100 user ids. Any user ids not found are ignored. | [optional] |
| **query** | **String** | Counts users that match the given query. For possible matches, we check the email addresses, phone numbers, usernames, web3 wallets, user ids, first and last names. The query value doesn&#39;t need to match the exact value you are looking for, it is capable of partial matches as well. | [optional] |

### Return type

[**TotalCount**](TotalCount.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lock

> <User> lock_user(user_id)

Lock a user

Marks the given user as locked, which means they are not allowed to sign in again until the lock expires. Lock duration can be configured in the instance's restrictions settings.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user to lock

begin
  # Lock a user
  result = sdk.lock(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->lock: #{e}"
end
```

#### Using the `lock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> lock_user_with_http_info(user_id)

```ruby
begin
  # Lock a user
  data, status_code, headers = sdk.lock_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->lock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user to lock |  |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_profile_image

> <User> set_user_profile_image(user_id, opts)

Set user profile image

Update a user's profile image

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user to update the profile image for
opts = {
  file: File.new('/path/to/some/file') # File | 
}

begin
  # Set user profile image
  result = sdk.update_profile_image(user_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->update_profile_image: #{e}"
end
```

#### Using the `update_profile_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> set_user_profile_image_with_http_info(user_id, opts)

```ruby
begin
  # Set user profile image
  data, status_code, headers = sdk.update_profile_image_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->update_profile_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user to update the profile image for |  |
| **file** | **File** |  | [optional] |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## unban

> <User> unban_user(user_id)

Unban a user

Removes the ban mark from the given user.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user to unban

begin
  # Unban a user
  result = sdk.unban(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->unban: #{e}"
end
```

#### Using the `unban_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> unban_user_with_http_info(user_id)

```ruby
begin
  # Unban a user
  data, status_code, headers = sdk.unban_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->unban_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user to unban |  |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unlock

> <User> unlock_user(user_id)

Unlock a user

Removes the lock from the given user.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user to unlock

begin
  # Unlock a user
  result = sdk.unlock(user_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->unlock: #{e}"
end
```

#### Using the `unlock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> unlock_user_with_http_info(user_id)

```ruby
begin
  # Unlock a user
  data, status_code, headers = sdk.unlock_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->unlock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user to unlock |  |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update

> <User> update_user(user_id, update_user_request)

Update a user

Update a user's attributes.  You can set the user's primary contact identifiers (email address and phone numbers) by updating the `primary_email_address_id` and `primary_phone_number_id` attributes respectively. Both IDs should correspond to verified identifications that belong to the user.  You can remove a user's username by setting the username attribute to null or the blank string \"\". This is a destructive action; the identification will be deleted forever. Usernames can be removed only if they are optional in your instance settings and there's at least one other identifier which can be used for authentication.  This endpoint allows changing a user's password. When passing the `password` parameter directly you have two further options. You can ignore the password policy checks for your instance by setting the `skip_password_checks` parameter to `true`. You can also choose to sign the user out of all their active sessions on any device once the password is updated. Just set `sign_out_of_other_sessions` to `true`.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user to update
update_user_request = ClerkHttpClient::UpdateUserRequest.new # UpdateUserRequest | 

begin
  # Update a user
  result = sdk.update(user_id, update_user_request)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->update: #{e}"
end
```

#### Using the `update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> update_user_with_http_info(user_id, update_user_request)

```ruby
begin
  # Update a user
  data, status_code, headers = sdk.update_with_http_info(user_id, update_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user to update |  |
| **update_user_request** | [**UpdateUserRequest**](UpdateUserRequest.md) |  |  |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_metadata

> <User> update_user_metadata(user_id, opts)

Merge and update a user's metadata

Update a user's metadata attributes by merging existing values with the provided parameters.  This endpoint behaves differently than the *Update a user* endpoint. Metadata values will not be replaced entirely. Instead, a deep merge will be performed. Deep means that any nested JSON objects will be merged as well.  You can remove metadata keys at any level by setting their value to `null`.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user whose metadata will be updated and merged
opts = {
  update_user_metadata_request: ClerkHttpClient::UpdateUserMetadataRequest.new # UpdateUserMetadataRequest | 
}

begin
  # Merge and update a user's metadata
  result = sdk.update_metadata(user_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->update_metadata: #{e}"
end
```

#### Using the `update_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> update_user_metadata_with_http_info(user_id, opts)

```ruby
begin
  # Merge and update a user's metadata
  data, status_code, headers = sdk.update_metadata_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->update_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user whose metadata will be updated and merged |  |
| **update_user_metadata_request** | [**UpdateUserMetadataRequest**](UpdateUserMetadataRequest.md) |  | [optional] |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_passkey

> <DeletedObject> user_passkey_delete(user_id, passkey_identification_id)

Delete a user passkey

Delete the passkey identification for a given user and notify them through email.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user that owns the passkey identity
passkey_identification_id = 'passkey_identification_id_example' # String | The ID of the passkey identity to be deleted

begin
  # Delete a user passkey
  result = sdk.delete_passkey(user_id, passkey_identification_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_passkey: #{e}"
end
```

#### Using the `delete_passkey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> user_passkey_delete_with_http_info(user_id, passkey_identification_id)

```ruby
begin
  # Delete a user passkey
  data, status_code, headers = sdk.delete_passkey_with_http_info(user_id, passkey_identification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_passkey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user that owns the passkey identity |  |
| **passkey_identification_id** | **String** | The ID of the passkey identity to be deleted |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_web3_wallet

> <DeletedObject> user_web3_wallet_delete(user_id, web3_wallet_identification_id)

Delete a user web3 wallet

Delete the web3 wallet identification for a given user.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user that owns the web3 wallet
web3_wallet_identification_id = 'web3_wallet_identification_id_example' # String | The ID of the web3 wallet identity to be deleted

begin
  # Delete a user web3 wallet
  result = sdk.delete_web3_wallet(user_id, web3_wallet_identification_id)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_web3_wallet: #{e}"
end
```

#### Using the `delete_web3_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedObject>, Integer, Hash)> user_web3_wallet_delete_with_http_info(user_id, web3_wallet_identification_id)

```ruby
begin
  # Delete a user web3 wallet
  data, status_code, headers = sdk.delete_web3_wallet_with_http_info(user_id, web3_wallet_identification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedObject>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->delete_web3_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user that owns the web3 wallet |  |
| **web3_wallet_identification_id** | **String** | The ID of the web3 wallet identity to be deleted |  |

### Return type

[**DeletedObject**](DeletedObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## organization_invitations

> <OrganizationInvitationsWithPublicOrganizationData> users_get_organization_invitations(user_id, opts)

Retrieve all invitations for a user

Retrieve a paginated list of the user's organization invitations

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user whose organization invitations we want to retrieve
opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14, # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
  status: 'pending' # String | Filter organization invitations based on their status
}

begin
  # Retrieve all invitations for a user
  result = sdk.organization_invitations(user_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->organization_invitations: #{e}"
end
```

#### Using the `organization_invitations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitationsWithPublicOrganizationData>, Integer, Hash)> users_get_organization_invitations_with_http_info(user_id, opts)

```ruby
begin
  # Retrieve all invitations for a user
  data, status_code, headers = sdk.organization_invitations_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitationsWithPublicOrganizationData>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->organization_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user whose organization invitations we want to retrieve |  |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |
| **status** | **String** | Filter organization invitations based on their status | [optional] |

### Return type

[**OrganizationInvitationsWithPublicOrganizationData**](OrganizationInvitationsWithPublicOrganizationData.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## organization_memberships

> <OrganizationMemberships> users_get_organization_memberships(user_id, opts)

Retrieve all memberships for a user

Retrieve a paginated list of the user's organization memberships

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user whose organization memberships we want to retrieve
opts = {
  limit: 8.14, # Float | Applies a limit to the number of results returned. Can be used for paginating the results together with `offset`.
  offset: 8.14 # Float | Skip the first `offset` results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with `limit`.
}

begin
  # Retrieve all memberships for a user
  result = sdk.organization_memberships(user_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->organization_memberships: #{e}"
end
```

#### Using the `organization_memberships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationMemberships>, Integer, Hash)> users_get_organization_memberships_with_http_info(user_id, opts)

```ruby
begin
  # Retrieve all memberships for a user
  data, status_code, headers = sdk.organization_memberships_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationMemberships>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->organization_memberships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user whose organization memberships we want to retrieve |  |
| **limit** | **Float** | Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. | [optional][default to 10] |
| **offset** | **Float** | Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. | [optional][default to 0] |

### Return type

[**OrganizationMemberships**](OrganizationMemberships.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_password

> <VerifyPassword200Response> verify_password(user_id, opts)

Verify the password of a user

Check that the user's password matches the supplied input. Useful for custom auth flows and re-verification.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user for whom to verify the password
opts = {
  verify_password_request: ClerkHttpClient::VerifyPasswordRequest.new({password: 'password_example'}) # VerifyPasswordRequest | 
}

begin
  # Verify the password of a user
  result = sdk.verify_password(user_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->verify_password: #{e}"
end
```

#### Using the `verify_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyPassword200Response>, Integer, Hash)> verify_password_with_http_info(user_id, opts)

```ruby
begin
  # Verify the password of a user
  data, status_code, headers = sdk.verify_password_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyPassword200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->verify_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user for whom to verify the password |  |
| **verify_password_request** | [**VerifyPasswordRequest**](VerifyPasswordRequest.md) |  | [optional] |

### Return type

[**VerifyPassword200Response**](VerifyPassword200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_totp

> <VerifyTOTP200Response> verify_totp(user_id, opts)

Verify a TOTP or backup code for a user

Verify that the provided TOTP or backup code is valid for the user. Verifying a backup code will result it in being consumed (i.e. it will become invalid). Useful for custom auth flows and re-verification.

### Examples

#### 

```ruby
require 'time'
require 'clerk'

## Setup
Clerk.configure do |config|
  config.secret_key = 'sk_test_xxxxxxxxx'
end

sdk = ClerkHttpClient::UsersApi.new
user_id = 'user_id_example' # String | The ID of the user for whom to verify the TOTP
opts = {
  verify_totp_request: ClerkHttpClient::VerifyTOTPRequest.new({code: 'code_example'}) # VerifyTOTPRequest | 
}

begin
  # Verify a TOTP or backup code for a user
  result = sdk.verify_totp(user_id, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->verify_totp: #{e}"
end
```

#### Using the `verify_totp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyTOTP200Response>, Integer, Hash)> verify_totp_with_http_info(user_id, opts)

```ruby
begin
  # Verify a TOTP or backup code for a user
  data, status_code, headers = sdk.verify_totp_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyTOTP200Response>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling UsersApi->verify_totp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user for whom to verify the TOTP |  |
| **verify_totp_request** | [**VerifyTOTPRequest**](VerifyTOTPRequest.md) |  | [optional] |

### Return type

[**VerifyTOTP200Response**](VerifyTOTP200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

