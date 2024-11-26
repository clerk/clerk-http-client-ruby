# AllowlistIdentifiers
(*allowlist_identifiers*)

## Overview

### Available Operations

* [all](#all) - List all identifiers on the allow-list
* [create](#create) - Add identifier to the allow-list
* [delete](#delete) - Delete identifier from allow-list

## all

Get a list of all identifiers allowed to sign up to an instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.allowlist_identifiers.all()

if ! res.allowlist_identifier_list.nil?
  # handle response
end

```

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListAllowlistIdentifiersResponse)](../../models/operations/listallowlistidentifiersresponse.md)**



## create

Create an identifier allowed to sign up to an instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateAllowlistIdentifierRequestBody.new(
  identifier: "<value>",
)
    
res = s.allowlist_identifiers.create(req)

if ! res.allowlist_identifier.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                              | Type                                                                                                                                   | Required                                                                                                                               | Description                                                                                                                            |
| -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                              | [::ClerkSDKBackend::Operations::CreateAllowlistIdentifierRequestBody](../../models/operations/createallowlistidentifierrequestbody.md) | :heavy_check_mark:                                                                                                                     | The request object to use for the request.                                                                                             |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateAllowlistIdentifierResponse)](../../models/operations/createallowlistidentifierresponse.md)**



## delete

Delete an identifier from the instance allow-list

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.allowlist_identifiers.delete(identifier_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                              | Type                                                   | Required                                               | Description                                            |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `identifier_id`                                        | *::String*                                             | :heavy_check_mark:                                     | The ID of the identifier to delete from the allow-list |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteAllowlistIdentifierResponse)](../../models/operations/deleteallowlistidentifierresponse.md)**

