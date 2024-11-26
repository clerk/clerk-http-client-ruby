# Clients
(*clients*)

## Overview

The Client object tracks sessions, as well as the state of any sign in and sign up attempts, for a given device.
<https://clerk.com/docs/reference/clerkjs/client>

### Available Operations

* [verify](#verify) - Verify a client
* [find](#find) - Get a client

## verify

Verifies the client in the provided token

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::VerifyClientRequestBody.new()
    
res = s.clients.verify(req)

if ! res.client.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                    | Type                                                                                                         | Required                                                                                                     | Description                                                                                                  |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                    | [::ClerkSDKBackend::Operations::VerifyClientRequestBody](../../models/operations/verifyclientrequestbody.md) | :heavy_check_mark:                                                                                           | The request object to use for the request.                                                                   |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::VerifyClientResponse)](../../models/operations/verifyclientresponse.md)**



## find

Returns the details of a client.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.clients.find(client_id="<id>")

if ! res.client.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `client_id`        | *::String*         | :heavy_check_mark: | Client ID.         |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetClientResponse)](../../models/operations/getclientresponse.md)**

