# ClerkHttpClient::SessionLatestActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **device_type** | **String** |  | [optional] |
| **is_mobile** | **Boolean** |  | [optional] |
| **browser_name** | **String** |  | [optional] |
| **browser_version** | **String** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::SessionLatestActivity.new(
  object: null,
  id: null,
  device_type: null,
  is_mobile: null,
  browser_name: null,
  browser_version: null,
  ip_address: null,
  city: null,
  country: null
)
```

