# ClerkHttpClient::CNameTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** |  |  |
| **value** | **String** |  |  |
| **required** | **Boolean** | Denotes whether this CNAME target is required to be set in order for the domain to be considered deployed.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::CNameTarget.new(
  host: null,
  value: null,
  required: null
)
```

