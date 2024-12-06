# ClerkBackend::Domain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **is_satellite** | **Boolean** |  |  |
| **frontend_api_url** | **String** |  |  |
| **accounts_portal_url** | **String** | Null for satellite domains.  | [optional] |
| **proxy_url** | **String** |  | [optional] |
| **development_origin** | **String** |  |  |
| **cname_targets** | [**Array&lt;CNameTarget&gt;**](CNameTarget.md) |  | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::Domain.new(
  object: null,
  id: null,
  name: null,
  is_satellite: null,
  frontend_api_url: null,
  accounts_portal_url: null,
  proxy_url: null,
  development_origin: null,
  cname_targets: null
)
```

