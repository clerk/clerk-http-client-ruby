# Miscellaneous
(*miscellaneous*)

## Overview

Various endpoints that do not belong in any particular category.

### Available Operations

* [get_public_interstitial](#get_public_interstitial) - Returns the markup for the interstitial page

## get_public_interstitial

The Clerk interstitial endpoint serves an html page that loads clerk.js in order to check the user's authentication state.
It is used by Clerk SDKs when the user's authentication state cannot be immediately determined.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new

    
res = s.miscellaneous.get_public_interstitial(frontend_api="<value>", publishable_key="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                             | Type                                  | Required                              | Description                           |
| ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- |
| `frontend_api`                        | *T.nilable(::String)*                 | :heavy_minus_sign:                    | The Frontend API key of your instance |
| `publishable_key`                     | *T.nilable(::String)*                 | :heavy_minus_sign:                    | The publishable key of your instance  |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::GetPublicInterstitialResponse)](../../models/operations/getpublicinterstitialresponse.md)**

