# Jwks
(*jwks*)

## Overview

### Available Operations

* [find](#find) - Retrieve the JSON Web Key Set of the instance

## find

Retrieve the JSON Web Key Set of the instance

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.jwks.find()

if ! res.well_known_jwks.nil?
  # handle response
end

```

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetJWKSResponse)](../../models/operations/getjwksresponse.md)**

