# BlocklistIdentifiers
(*blocklist_identifiers*)

## Overview

### Available Operations

* [all](#all) - List all identifiers on the block-list
* [create](#create) - Add identifier to the block-list
* [delete](#delete) - Delete identifier from block-list

## all

Get a list of all identifiers which are not allowed to access an instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.blocklist_identifiers.all()

if ! res.blocklist_identifiers.nil?
  # handle response
end

```

### Response

**[T.nilable(::ClerkSDKBackend::Operations::ListBlocklistIdentifiersResponse)](../../models/operations/listblocklistidentifiersresponse.md)**



## create

Create an identifier that is blocked from accessing an instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateBlocklistIdentifierRequestBody.new(
  identifier: "<value>",
)
    
res = s.blocklist_identifiers.create(req)

if ! res.blocklist_identifier.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                              | Type                                                                                                                                   | Required                                                                                                                               | Description                                                                                                                            |
| -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                              | [::ClerkSDKBackend::Operations::CreateBlocklistIdentifierRequestBody](../../models/operations/createblocklistidentifierrequestbody.md) | :heavy_check_mark:                                                                                                                     | The request object to use for the request.                                                                                             |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateBlocklistIdentifierResponse)](../../models/operations/createblocklistidentifierresponse.md)**



## delete

Delete an identifier from the instance block-list

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.blocklist_identifiers.delete(identifier_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                              | Type                                                   | Required                                               | Description                                            |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `identifier_id`                                        | *::String*                                             | :heavy_check_mark:                                     | The ID of the identifier to delete from the block-list |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteBlocklistIdentifierResponse)](../../models/operations/deleteblocklistidentifierresponse.md)**

