# SignUps
(*sign_ups*)

## Overview

### Available Operations

* [update](#update) - Update a sign-up

## update

Update the sign-up with the given ID

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.sign_ups.update(id="<id>", request_body=::ClerkSDKBackend::Operations::UpdateSignUpRequestBody.new())

if ! res.sign_up.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                    | Type                                                                                                         | Required                                                                                                     | Description                                                                                                  |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ |
| `id`                                                                                                         | *::String*                                                                                                   | :heavy_check_mark:                                                                                           | The ID of the sign-up to update                                                                              |
| `request_body`                                                                                               | [::ClerkSDKBackend::Operations::UpdateSignUpRequestBody](../../models/operations/updatesignuprequestbody.md) | :heavy_check_mark:                                                                                           | N/A                                                                                                          |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::UpdateSignUpResponse)](../../models/operations/updatesignupresponse.md)**

