# PhoneNumbers
(*phone_numbers*)

## Overview

### Available Operations

* [create](#create) - Create a phone number
* [find](#find) - Retrieve a phone number
* [delete](#delete) - Delete a phone number
* [update](#update) - Update a phone number

## create

Create a new phone number

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::CreatePhoneNumberRequestBody.new()
    
res = s.phone_numbers.create(req)

if ! res.phone_number.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                              | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                              | [::ClerkSDKBackend::Operations::CreatePhoneNumberRequestBody](../../models/operations/createphonenumberrequestbody.md) | :heavy_check_mark:                                                                                                     | The request object to use for the request.                                                                             |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreatePhoneNumberResponse)](../../models/operations/createphonenumberresponse.md)**



## find

Returns the details of a phone number

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.phone_numbers.find(phone_number_id="<id>")

if ! res.phone_number.nil?
  # handle response
end

```

### Parameters

| Parameter                              | Type                                   | Required                               | Description                            |
| -------------------------------------- | -------------------------------------- | -------------------------------------- | -------------------------------------- |
| `phone_number_id`                      | *::String*                             | :heavy_check_mark:                     | The ID of the phone number to retrieve |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetPhoneNumberResponse)](../../models/operations/getphonenumberresponse.md)**



## delete

Delete the phone number with the given ID

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.phone_numbers.delete(phone_number_id="<id>")

if ! res.deleted_object.nil?
  # handle response
end

```

### Parameters

| Parameter                            | Type                                 | Required                             | Description                          |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `phone_number_id`                    | *::String*                           | :heavy_check_mark:                   | The ID of the phone number to delete |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::DeletePhoneNumberResponse)](../../models/operations/deletephonenumberresponse.md)**



## update

Updates a phone number

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.phone_numbers.update(phone_number_id="<id>", request_body=::ClerkSDKBackend::Operations::UpdatePhoneNumberRequestBody.new())

if ! res.phone_number.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                              | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `phone_number_id`                                                                                                      | *::String*                                                                                                             | :heavy_check_mark:                                                                                                     | The ID of the phone number to update                                                                                   |
| `request_body`                                                                                                         | [::ClerkSDKBackend::Operations::UpdatePhoneNumberRequestBody](../../models/operations/updatephonenumberrequestbody.md) | :heavy_check_mark:                                                                                                     | N/A                                                                                                                    |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdatePhoneNumberResponse)](../../models/operations/updatephonenumberresponse.md)**

