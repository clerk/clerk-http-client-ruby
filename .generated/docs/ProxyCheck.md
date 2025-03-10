# ClerkHttpClient::ProxyCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  |  |
| **id** | **String** |  |  |
| **domain_id** | **String** |  |  |
| **last_run_at** | **Integer** | Unix timestamp of last run.  |  |
| **proxy_url** | **String** |  |  |
| **successful** | **Boolean** |  |  |
| **created_at** | **Integer** | Unix timestamp of creation.  |  |
| **updated_at** | **Integer** | Unix timestamp of last update.  |  |

## Example

```ruby
require 'clerk-http-client'

instance = ClerkHttpClient::ProxyCheck.new(
  object: null,
  id: null,
  domain_id: null,
  last_run_at: null,
  proxy_url: null,
  successful: null,
  created_at: null,
  updated_at: null
)
```

