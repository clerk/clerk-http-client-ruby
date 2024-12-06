# ClerkBackend::CreateSAMLConnectionRequestAttributeMapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  | [optional] |
| **email_address** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |

## Example

```ruby
require 'clerk-backend'

instance = ClerkBackend::CreateSAMLConnectionRequestAttributeMapping.new(
  user_id: null,
  email_address: null,
  first_name: null,
  last_name: null
)
```
