# TestingTokens
(*testing_tokens*)

## Overview

### Available Operations

* [create](#create) - Retrieve a new testing token

## create

Retrieve a new testing token. Only available for development instances.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.testing_tokens.create()

if ! res.testing_token.nil?
  # handle response
end

```

### Response

**[T.nilable(::ClerkSDKBackend::Operations::CreateTestingTokenResponse)](../../models/operations/createtestingtokenresponse.md)**

