# ClerkHttpClient::EmailSMSTemplatesApi

All URIs are relative to *https://api.clerk.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_template**](EmailSMSTemplatesApi.md#get_template) | **GET** /templates/{template_type}/{slug} | Retrieve a template |
| [**get_template_list**](EmailSMSTemplatesApi.md#get_template_list) | **GET** /templates/{template_type} | List all templates |
| [**preview_template**](EmailSMSTemplatesApi.md#preview_template) | **POST** /templates/{template_type}/{slug}/preview | Preview changes to a template |
| [**revert_template**](EmailSMSTemplatesApi.md#revert_template) | **POST** /templates/{template_type}/{slug}/revert | Revert a template |
| [**toggle_template_delivery**](EmailSMSTemplatesApi.md#toggle_template_delivery) | **POST** /templates/{template_type}/{slug}/toggle_delivery | Toggle the delivery by Clerk for a template of a given type and slug |
| [**upsert_template**](EmailSMSTemplatesApi.md#upsert_template) | **PUT** /templates/{template_type}/{slug} | Update a template for a given type and slug |


## get_template

> <Template> get_template(template_type, slug)

Retrieve a template

Returns the details of a template

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::EmailSMSTemplatesApi.new
template_type = 'email' # String | The type of templates to retrieve (email or SMS)
slug = 'slug_example' # String | The slug (i.e. machine-friendly name) of the template to retrieve

begin
  # Retrieve a template
  result = api_instance.get_template(template_type, slug)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->get_template: #{e}"
end
```

#### Using the get_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Template>, Integer, Hash)> get_template_with_http_info(template_type, slug)

```ruby
begin
  # Retrieve a template
  data, status_code, headers = api_instance.get_template_with_http_info(template_type, slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Template>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->get_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_type** | **String** | The type of templates to retrieve (email or SMS) |  |
| **slug** | **String** | The slug (i.e. machine-friendly name) of the template to retrieve |  |

### Return type

[**Template**](Template.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template_list

> <Array<Template>> get_template_list(template_type)

List all templates

Returns a list of all templates. The templates are returned sorted by position.

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::EmailSMSTemplatesApi.new
template_type = 'email' # String | The type of templates to list (email or SMS)

begin
  # List all templates
  result = api_instance.get_template_list(template_type)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->get_template_list: #{e}"
end
```

#### Using the get_template_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Template>>, Integer, Hash)> get_template_list_with_http_info(template_type)

```ruby
begin
  # List all templates
  data, status_code, headers = api_instance.get_template_list_with_http_info(template_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Template>>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->get_template_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_type** | **String** | The type of templates to list (email or SMS) |  |

### Return type

[**Array&lt;Template&gt;**](Template.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## preview_template

> Object preview_template(template_type, slug, opts)

Preview changes to a template

Returns a preview of a template for a given template_type, slug and body

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::EmailSMSTemplatesApi.new
template_type = 'template_type_example' # String | The type of template to preview
slug = 'slug_example' # String | The slug of the template to preview
opts = {
  preview_template_request: ClerkHttpClient::PreviewTemplateRequest.new # PreviewTemplateRequest | Required parameters
}

begin
  # Preview changes to a template
  result = api_instance.preview_template(template_type, slug, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->preview_template: #{e}"
end
```

#### Using the preview_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> preview_template_with_http_info(template_type, slug, opts)

```ruby
begin
  # Preview changes to a template
  data, status_code, headers = api_instance.preview_template_with_http_info(template_type, slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->preview_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_type** | **String** | The type of template to preview |  |
| **slug** | **String** | The slug of the template to preview |  |
| **preview_template_request** | [**PreviewTemplateRequest**](PreviewTemplateRequest.md) | Required parameters | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## revert_template

> <Template> revert_template(template_type, slug)

Revert a template

Reverts an updated template to its default state

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::EmailSMSTemplatesApi.new
template_type = 'email' # String | The type of template to revert
slug = 'slug_example' # String | The slug of the template to revert

begin
  # Revert a template
  result = api_instance.revert_template(template_type, slug)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->revert_template: #{e}"
end
```

#### Using the revert_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Template>, Integer, Hash)> revert_template_with_http_info(template_type, slug)

```ruby
begin
  # Revert a template
  data, status_code, headers = api_instance.revert_template_with_http_info(template_type, slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Template>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->revert_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_type** | **String** | The type of template to revert |  |
| **slug** | **String** | The slug of the template to revert |  |

### Return type

[**Template**](Template.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## toggle_template_delivery

> <Template> toggle_template_delivery(template_type, slug, opts)

Toggle the delivery by Clerk for a template of a given type and slug

Toggles the delivery by Clerk for a template of a given type and slug. If disabled, Clerk will not deliver the resulting email or SMS. The app developer will need to listen to the `email.created` or `sms.created` webhooks in order to handle delivery themselves.

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::EmailSMSTemplatesApi.new
template_type = 'email' # String | The type of template to toggle delivery for
slug = 'slug_example' # String | The slug of the template for which to toggle delivery
opts = {
  toggle_template_delivery_request: ClerkHttpClient::ToggleTemplateDeliveryRequest.new # ToggleTemplateDeliveryRequest | 
}

begin
  # Toggle the delivery by Clerk for a template of a given type and slug
  result = api_instance.toggle_template_delivery(template_type, slug, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->toggle_template_delivery: #{e}"
end
```

#### Using the toggle_template_delivery_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Template>, Integer, Hash)> toggle_template_delivery_with_http_info(template_type, slug, opts)

```ruby
begin
  # Toggle the delivery by Clerk for a template of a given type and slug
  data, status_code, headers = api_instance.toggle_template_delivery_with_http_info(template_type, slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Template>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->toggle_template_delivery_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_type** | **String** | The type of template to toggle delivery for |  |
| **slug** | **String** | The slug of the template for which to toggle delivery |  |
| **toggle_template_delivery_request** | [**ToggleTemplateDeliveryRequest**](ToggleTemplateDeliveryRequest.md) |  | [optional] |

### Return type

[**Template**](Template.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upsert_template

> <Template> upsert_template(template_type, slug, opts)

Update a template for a given type and slug

Updates the existing template of the given type and slug

### Examples

```ruby
require 'time'
require 'clerk-http-client-ruby'
# setup authorization
ClerkHttpClient.configure do |config|
  # Configure Bearer authorization (sk_<environment>_<secret value>): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ClerkHttpClient::EmailSMSTemplatesApi.new
template_type = 'email' # String | The type of template to update
slug = 'slug_example' # String | The slug of the template to update
opts = {
  upsert_template_request: ClerkHttpClient::UpsertTemplateRequest.new # UpsertTemplateRequest | 
}

begin
  # Update a template for a given type and slug
  result = api_instance.upsert_template(template_type, slug, opts)
  p result
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->upsert_template: #{e}"
end
```

#### Using the upsert_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Template>, Integer, Hash)> upsert_template_with_http_info(template_type, slug, opts)

```ruby
begin
  # Update a template for a given type and slug
  data, status_code, headers = api_instance.upsert_template_with_http_info(template_type, slug, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Template>
rescue ClerkHttpClient::ApiError => e
  puts "Error when calling EmailSMSTemplatesApi->upsert_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_type** | **String** | The type of template to update |  |
| **slug** | **String** | The slug of the template to update |  |
| **upsert_template_request** | [**UpsertTemplateRequest**](UpsertTemplateRequest.md) |  | [optional] |

### Return type

[**Template**](Template.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

