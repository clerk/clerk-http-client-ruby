=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module ClerkHttpClient
  class EmailSMSTemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a template
    # Returns the details of a template
    # @param template_type [String] The type of templates to retrieve (email or SMS)
    # @param slug [String] The slug (i.e. machine-friendly name) of the template to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Template]

    def find(template_type, slug, opts = {})
      data, _status_code, _headers = find_with_http_info(template_type, slug, opts)
      data
    end

    # Retrieve a template
    # Returns the details of a template
    # @param template_type [String] The type of templates to retrieve (email or SMS)
    # @param slug [String] The slug (i.e. machine-friendly name) of the template to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(Template, Integer, Hash)>] Template data, response status code and response headers
    # GET 
    def find_with_http_info(template_type, slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailSMSTemplatesApi.get_template ...'
      end
      # verify the required parameter 'template_type' is set
      if @api_client.config.client_side_validation && template_type.nil?
        fail ArgumentError, "Missing the required parameter 'template_type' when calling EmailSMSTemplatesApi.get_template"
      end
      # verify enum value
      allowable_values = ["email", "sms"]
      if @api_client.config.client_side_validation && !allowable_values.include?(template_type)
        fail ArgumentError, "invalid value for \"template_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'slug' is set
      if @api_client.config.client_side_validation && slug.nil?
        fail ArgumentError, "Missing the required parameter 'slug' when calling EmailSMSTemplatesApi.get_template"
      end
      # resource path
      local_var_path = '/templates/{template_type}/{slug}'.sub('{' + 'template_type' + '}', CGI.escape(template_type.to_s)).sub('{' + 'slug' + '}', CGI.escape(slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Template'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EmailSMSTemplatesApi.get_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailSMSTemplatesApi#get_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all templates
    # Returns a list of all templates. The templates are returned sorted by position.
    # @param template_type [String] The type of templates to list (email or SMS)
    # @param [Hash] opts the optional parameters
    # @return [Array<Template>]

    def all(template_type, opts = {})
      data, _status_code, _headers = all_with_http_info(template_type, opts)
      data
    end

    # List all templates
    # Returns a list of all templates. The templates are returned sorted by position.
    # @param template_type [String] The type of templates to list (email or SMS)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Template>, Integer, Hash)>] Array<Template> data, response status code and response headers
    # GET array
    def all_with_http_info(template_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailSMSTemplatesApi.get_template_list ...'
      end
      # verify the required parameter 'template_type' is set
      if @api_client.config.client_side_validation && template_type.nil?
        fail ArgumentError, "Missing the required parameter 'template_type' when calling EmailSMSTemplatesApi.get_template_list"
      end
      # verify enum value
      allowable_values = ["email", "sms"]
      if @api_client.config.client_side_validation && !allowable_values.include?(template_type)
        fail ArgumentError, "invalid value for \"template_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/templates/{template_type}'.sub('{' + 'template_type' + '}', CGI.escape(template_type.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Template>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EmailSMSTemplatesApi.get_template_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailSMSTemplatesApi#get_template_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Preview changes to a template
    # Returns a preview of a template for a given template_type, slug and body
    # @param template_type [String] The type of template to preview
    # @param slug [String] The slug of the template to preview
    # @param [Hash] opts the optional parameters
    # @option opts [PreviewTemplateRequest] :preview_template_request Required parameters
    # @return [Object]

    def preview(template_type, slug, opts = {})
      data, _status_code, _headers = preview_with_http_info(template_type, slug, opts)
      data
    end

    # Preview changes to a template
    # Returns a preview of a template for a given template_type, slug and body
    # @param template_type [String] The type of template to preview
    # @param slug [String] The slug of the template to preview
    # @param [Hash] opts the optional parameters
    # @option opts [PreviewTemplateRequest] :preview_template_request Required parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    # POST 
    def preview_with_http_info(template_type, slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailSMSTemplatesApi.preview_template ...'
      end
      # verify the required parameter 'template_type' is set
      if @api_client.config.client_side_validation && template_type.nil?
        fail ArgumentError, "Missing the required parameter 'template_type' when calling EmailSMSTemplatesApi.preview_template"
      end
      # verify the required parameter 'slug' is set
      if @api_client.config.client_side_validation && slug.nil?
        fail ArgumentError, "Missing the required parameter 'slug' when calling EmailSMSTemplatesApi.preview_template"
      end
      # resource path
      local_var_path = '/templates/{template_type}/{slug}/preview'.sub('{' + 'template_type' + '}', CGI.escape(template_type.to_s)).sub('{' + 'slug' + '}', CGI.escape(slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'preview_template_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EmailSMSTemplatesApi.preview_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailSMSTemplatesApi#preview_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revert a template
    # Reverts an updated template to its default state
    # @param template_type [String] The type of template to revert
    # @param slug [String] The slug of the template to revert
    # @param [Hash] opts the optional parameters
    # @return [Template]

    def revert(template_type, slug, opts = {})
      data, _status_code, _headers = revert_with_http_info(template_type, slug, opts)
      data
    end

    # Revert a template
    # Reverts an updated template to its default state
    # @param template_type [String] The type of template to revert
    # @param slug [String] The slug of the template to revert
    # @param [Hash] opts the optional parameters
    # @return [Array<(Template, Integer, Hash)>] Template data, response status code and response headers
    # POST 
    def revert_with_http_info(template_type, slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailSMSTemplatesApi.revert_template ...'
      end
      # verify the required parameter 'template_type' is set
      if @api_client.config.client_side_validation && template_type.nil?
        fail ArgumentError, "Missing the required parameter 'template_type' when calling EmailSMSTemplatesApi.revert_template"
      end
      # verify enum value
      allowable_values = ["email", "sms"]
      if @api_client.config.client_side_validation && !allowable_values.include?(template_type)
        fail ArgumentError, "invalid value for \"template_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'slug' is set
      if @api_client.config.client_side_validation && slug.nil?
        fail ArgumentError, "Missing the required parameter 'slug' when calling EmailSMSTemplatesApi.revert_template"
      end
      # resource path
      local_var_path = '/templates/{template_type}/{slug}/revert'.sub('{' + 'template_type' + '}', CGI.escape(template_type.to_s)).sub('{' + 'slug' + '}', CGI.escape(slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Template'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EmailSMSTemplatesApi.revert_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailSMSTemplatesApi#revert_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Toggle the delivery by Clerk for a template of a given type and slug
    # Toggles the delivery by Clerk for a template of a given type and slug. If disabled, Clerk will not deliver the resulting email or SMS. The app developer will need to listen to the `email.created` or `sms.created` webhooks in order to handle delivery themselves.
    # @param template_type [String] The type of template to toggle delivery for
    # @param slug [String] The slug of the template for which to toggle delivery
    # @param [Hash] opts the optional parameters
    # @option opts [ToggleTemplateDeliveryRequest] :toggle_template_delivery_request 
    # @return [Template]

    def toggle_delivery(template_type, slug, opts = {})
      data, _status_code, _headers = toggle_delivery_with_http_info(template_type, slug, opts)
      data
    end

    # Toggle the delivery by Clerk for a template of a given type and slug
    # Toggles the delivery by Clerk for a template of a given type and slug. If disabled, Clerk will not deliver the resulting email or SMS. The app developer will need to listen to the &#x60;email.created&#x60; or &#x60;sms.created&#x60; webhooks in order to handle delivery themselves.
    # @param template_type [String] The type of template to toggle delivery for
    # @param slug [String] The slug of the template for which to toggle delivery
    # @param [Hash] opts the optional parameters
    # @option opts [ToggleTemplateDeliveryRequest] :toggle_template_delivery_request 
    # @return [Array<(Template, Integer, Hash)>] Template data, response status code and response headers
    # POST 
    def toggle_delivery_with_http_info(template_type, slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailSMSTemplatesApi.toggle_template_delivery ...'
      end
      # verify the required parameter 'template_type' is set
      if @api_client.config.client_side_validation && template_type.nil?
        fail ArgumentError, "Missing the required parameter 'template_type' when calling EmailSMSTemplatesApi.toggle_template_delivery"
      end
      # verify enum value
      allowable_values = ["email", "sms"]
      if @api_client.config.client_side_validation && !allowable_values.include?(template_type)
        fail ArgumentError, "invalid value for \"template_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'slug' is set
      if @api_client.config.client_side_validation && slug.nil?
        fail ArgumentError, "Missing the required parameter 'slug' when calling EmailSMSTemplatesApi.toggle_template_delivery"
      end
      # resource path
      local_var_path = '/templates/{template_type}/{slug}/toggle_delivery'.sub('{' + 'template_type' + '}', CGI.escape(template_type.to_s)).sub('{' + 'slug' + '}', CGI.escape(slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'toggle_template_delivery_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Template'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EmailSMSTemplatesApi.toggle_template_delivery",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailSMSTemplatesApi#toggle_template_delivery\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a template for a given type and slug
    # Updates the existing template of the given type and slug
    # @param template_type [String] The type of template to update
    # @param slug [String] The slug of the template to update
    # @param [Hash] opts the optional parameters
    # @option opts [UpsertTemplateRequest] :upsert_template_request 
    # @return [Template]

    def update(template_type, slug, opts = {})
      data, _status_code, _headers = update_with_http_info(template_type, slug, opts)
      data
    end

    # Update a template for a given type and slug
    # Updates the existing template of the given type and slug
    # @param template_type [String] The type of template to update
    # @param slug [String] The slug of the template to update
    # @param [Hash] opts the optional parameters
    # @option opts [UpsertTemplateRequest] :upsert_template_request 
    # @return [Array<(Template, Integer, Hash)>] Template data, response status code and response headers
    # PUT 
    def update_with_http_info(template_type, slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailSMSTemplatesApi.upsert_template ...'
      end
      # verify the required parameter 'template_type' is set
      if @api_client.config.client_side_validation && template_type.nil?
        fail ArgumentError, "Missing the required parameter 'template_type' when calling EmailSMSTemplatesApi.upsert_template"
      end
      # verify enum value
      allowable_values = ["email", "sms"]
      if @api_client.config.client_side_validation && !allowable_values.include?(template_type)
        fail ArgumentError, "invalid value for \"template_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'slug' is set
      if @api_client.config.client_side_validation && slug.nil?
        fail ArgumentError, "Missing the required parameter 'slug' when calling EmailSMSTemplatesApi.upsert_template"
      end
      # resource path
      local_var_path = '/templates/{template_type}/{slug}'.sub('{' + 'template_type' + '}', CGI.escape(template_type.to_s)).sub('{' + 'slug' + '}', CGI.escape(slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'upsert_template_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Template'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EmailSMSTemplatesApi.upsert_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailSMSTemplatesApi#upsert_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end