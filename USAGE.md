<!-- Start SDK Example Usage [usage] -->
```ruby
require 'clerk_sdk_backend'


s = ::ClerkSDKBackend::SDK.new

    
res = s.miscellaneous.get_public_interstitial(frontend_api="<value>", publishable_key="<value>")

if res.status_code == 200
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->