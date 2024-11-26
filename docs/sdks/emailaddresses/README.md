# EmailAddresses
(*email_addresses*)

## Overview

### Available Operations

* [create](#create) - Create an email address
* [find](#find) - Retrieve an email address
* [delete](#delete) - Delete an email address
* [update](#update) - Update an email address

## create

Create a new email address

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreateEmailAddressRequestBody.new()
    
res = s.email_addresses.create(req)

if ! res.email_address.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                | Type                                                                                                                     | Required                                                                                                                 | Description                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                | [::ClerkSDKBackend::Operations::CreateEmailAddressRequestBody](../../models/operations/createemailaddressrequestbody.md) | :heavy_check_mark:                                                                                                       | The request object to use for the request.                                                                               |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateEmailAddressResponse)](../../models/operations/createemailaddressresponse.md)**



## find

Returns the details of an email address.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.email_addresses.find(email_address_id="<id>")

if ! res.email_address.nil?
  # handle response
end

```

### Parameters

| Parameter                               | Type                                    | Required                                | Description                             |
| --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- |
| `email_address_id`                      | *::String*                              | :heavy_check_mark:                      | The ID of the email address to retrieve |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetEmailAddressResponse)](../../models/operations/getemailaddressresponse.md)**



## delete

Delete the email address with the given ID

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.email_addresses.delete(email_address_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                             | Type                                  | Required                              | Description                           |
| ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- |
| `email_address_id`                    | *::String*                            | :heavy_check_mark:                    | The ID of the email address to delete |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeleteEmailAddressResponse)](../../models/operations/deleteemailaddressresponse.md)**



## update

Updates an email address.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.email_addresses.update(email_address_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateEmailAddressRequestBody.new())

if ! res.email_address.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                | Type                                                                                                                     | Required                                                                                                                 | Description                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| `email_address_id`                                                                                                       | *::String*                                                                                                               | :heavy_check_mark:                                                                                                       | The ID of the email address to update                                                                                    |
| `request_body`                                                                                                           | [::ClerkSDKBackend::Operations::UpdateEmailAddressRequestBody](../../models/operations/updateemailaddressrequestbody.md) | :heavy_check_mark:                                                                                                       | N/A                                                                                                                      |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateEmailAddressResponse)](../../models/operations/updateemailaddressresponse.md)**

