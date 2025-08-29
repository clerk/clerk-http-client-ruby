# ClerkHttpClient::InviteWaitlistEntryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ignore_existing** | **Boolean** | Whether an invitation should be created if there is already an existing invitation for this email address, or it&#39;s claimed by another user. | [optional][default to false] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::InviteWaitlistEntryRequest.new(
  ignore_existing: null
)
```

