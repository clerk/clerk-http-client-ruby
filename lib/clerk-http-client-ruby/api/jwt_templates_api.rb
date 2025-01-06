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
  class JWTTemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a JWT template
    # Create a new JWT template
    # @param create_jwt_template_request [CreateJWTTemplateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [JWTTemplate]

    def create(create_jwt_template_request, opts = {})
      data, _status_code, _headers = create_with_http_info(create_jwt_template_request, opts)
      data
    end

    # Create a JWT template
    # Create a new JWT template
    # @param create_jwt_template_request [CreateJWTTemplateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(JWTTemplate, Integer, Hash)>] JWTTemplate data, response status code and response headers
    # POST 
    def create_with_http_info(create_jwt_template_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JWTTemplatesApi.create_jwt_template ...'
      end
      # verify the required parameter 'create_jwt_template_request' is set
      if @api_client.config.client_side_validation && create_jwt_template_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_jwt_template_request' when calling JWTTemplatesApi.create_jwt_template"
      end
      # resource path
      local_var_path = '/jwt_templates'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_jwt_template_request)

      # return_type
      return_type = opts[:debug_return_type] || 'JWTTemplate'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JWTTemplatesApi.create_jwt_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JWTTemplatesApi#create_jwt_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Template
    # 
    # @param template_id [String] JWT Template ID
    # @param [Hash] opts the optional parameters
    # @return [DeletedObject]

    def delete(template_id, opts = {})
      data, _status_code, _headers = delete_with_http_info(template_id, opts)
      data
    end

    # Delete a Template
    # 
    # @param template_id [String] JWT Template ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeletedObject, Integer, Hash)>] DeletedObject data, response status code and response headers
    # DELETE 
    def delete_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JWTTemplatesApi.delete_jwt_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling JWTTemplatesApi.delete_jwt_template"
      end
      # resource path
      local_var_path = '/jwt_templates/{template_id}'.sub('{' + 'template_id' + '}', CGI.escape(template_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeletedObject'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JWTTemplatesApi.delete_jwt_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JWTTemplatesApi#delete_jwt_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a template
    # Retrieve the details of a given JWT template
    # @param template_id [String] JWT Template ID
    # @param [Hash] opts the optional parameters
    # @return [JWTTemplate]

    def find(template_id, opts = {})
      data, _status_code, _headers = find_with_http_info(template_id, opts)
      data
    end

    # Retrieve a template
    # Retrieve the details of a given JWT template
    # @param template_id [String] JWT Template ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(JWTTemplate, Integer, Hash)>] JWTTemplate data, response status code and response headers
    # GET 
    def find_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JWTTemplatesApi.get_jwt_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling JWTTemplatesApi.get_jwt_template"
      end
      # resource path
      local_var_path = '/jwt_templates/{template_id}'.sub('{' + 'template_id' + '}', CGI.escape(template_id.to_s))

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
      return_type = opts[:debug_return_type] || 'JWTTemplate'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JWTTemplatesApi.get_jwt_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JWTTemplatesApi#get_jwt_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all templates
    # @param [Hash] opts the optional parameters
    # @return [Array<JWTTemplate>]

    def all(opts = {})
      data, _status_code, _headers = all_with_http_info(opts)
      data
    end

    # List all templates
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<JWTTemplate>, Integer, Hash)>] Array<JWTTemplate> data, response status code and response headers
    # GET array
    def all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JWTTemplatesApi.list_jwt_templates ...'
      end
      # resource path
      local_var_path = '/jwt_templates'

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
      return_type = opts[:debug_return_type] || 'Array<JWTTemplate>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JWTTemplatesApi.list_jwt_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JWTTemplatesApi#list_jwt_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a JWT template
    # Updates an existing JWT template
    # @param template_id [String] The ID of the JWT template to update
    # @param create_jwt_template_request [CreateJWTTemplateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [JWTTemplate]

    def update(template_id, create_jwt_template_request, opts = {})
      data, _status_code, _headers = update_with_http_info(template_id, create_jwt_template_request, opts)
      data
    end

    # Update a JWT template
    # Updates an existing JWT template
    # @param template_id [String] The ID of the JWT template to update
    # @param create_jwt_template_request [CreateJWTTemplateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(JWTTemplate, Integer, Hash)>] JWTTemplate data, response status code and response headers
    # PATCH 
    def update_with_http_info(template_id, create_jwt_template_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JWTTemplatesApi.update_jwt_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling JWTTemplatesApi.update_jwt_template"
      end
      # verify the required parameter 'create_jwt_template_request' is set
      if @api_client.config.client_side_validation && create_jwt_template_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_jwt_template_request' when calling JWTTemplatesApi.update_jwt_template"
      end
      # resource path
      local_var_path = '/jwt_templates/{template_id}'.sub('{' + 'template_id' + '}', CGI.escape(template_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_jwt_template_request)

      # return_type
      return_type = opts[:debug_return_type] || 'JWTTemplate'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"JWTTemplatesApi.update_jwt_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JWTTemplatesApi#update_jwt_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
