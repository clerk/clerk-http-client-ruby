# ClerkBackend::Template

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** | String representing the object&#39;s type. Objects of the same type share the same value.  | [optional] |
| **instance_id** | **String** | the id of the instance the template belongs to | [optional] |
| **resource_type** | **String** | whether this is a system (default) or user overridden) template | [optional] |
| **template_type** | **String** | whether this is an email or SMS template | [optional] |
| **name** | **String** | user-friendly name of the template | [optional] |
| **slug** | **String** | machine-friendly name of the template | [optional] |
| **position** | **Integer** | position with the listing of templates | [optional] |
| **can_revert** | **Boolean** | whether this template can be reverted to the corresponding system default | [optional] |
| **can_delete** | **Boolean** | whether this template can be deleted | [optional] |
| **can_toggle** | **Boolean** | whether this template can be enabled or disabled, true only for notification SMS templates | [optional] |
| **subject** | **String** | email subject | [optional] |
| **markup** | **String** | the editor markup used to generate the body of the template | [optional] |
| **body** | **String** | the template body before variable interpolation | [optional] |
| **available_variables** | **Array&lt;String&gt;** | list of variables that are available for use in the template body | [optional] |
| **required_variables** | **Array&lt;String&gt;** | list of variables that must be contained in the template body | [optional] |
| **from_email_name** | **String** |  | [optional] |
| **reply_to_email_name** | **String** |  | [optional] |
| **delivered_by_clerk** | **Boolean** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **updated_at** | **Integer** | Unix timestamp of last update.  | [optional] |
| **created_at** | **Integer** | Unix timestamp of creation.  | [optional] |

## Example

```ruby
require 'clerk-sdk-ruby-backend'

instance = ClerkBackend::Template.new(
  id: null,
  object: null,
  instance_id: null,
  resource_type: null,
  template_type: null,
  name: null,
  slug: null,
  position: null,
  can_revert: null,
  can_delete: null,
  can_toggle: null,
  subject: null,
  markup: null,
  body: null,
  available_variables: null,
  required_variables: null,
  from_email_name: null,
  reply_to_email_name: null,
  delivered_by_clerk: null,
  enabled: null,
  updated_at: null,
  created_at: null
)
```

