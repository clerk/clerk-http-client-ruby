# ProxyChecks
(*proxy_checks*)

## Overview

### Available Operations

* [verify](#verify) - Verify the proxy configuration for your domain

## verify

This endpoint can be used to validate that a proxy-enabled domain is operational.
It tries to verify that the proxy URL provided in the parameters maps to a functional proxy that can reach the Clerk Frontend API.

You can use this endpoint before you set a proxy URL for a domain. This way you can ensure that switching to proxy-based
configuration will not lead to downtime for your instance.

The `proxy_url` parameter allows for testing proxy configurations for domains that don't have a proxy URL yet, or operate on
a different proxy URL than the one provided. It can also be used to re-validate a domain that is already configured to work with a proxy.

### Example Usage

```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new
s.config_security(
  ::ClerkSDKBackend::Shared::Security.new(
    bearer_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::ClerkSDKBackend::Operations::VerifyDomainProxyRequestBody.new()
    
res = s.proxy_checks.verify(req)

if ! res.proxy_check.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                              | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                              | [::ClerkSDKBackend::Operations::VerifyDomainProxyRequestBody](../../models/operations/verifydomainproxyrequestbody.md) | :heavy_check_mark:                                                                                                     | The request object to use for the request.                                                                             |

### Response

**[T.nilable(::ClerkSDKBackend::Operations::VerifyDomainProxyResponse)](../../models/operations/verifydomainproxyresponse.md)**

