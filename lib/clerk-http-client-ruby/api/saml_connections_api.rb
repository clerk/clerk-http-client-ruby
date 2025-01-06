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
  class SAMLConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a SAML Connection
    # Create a new SAML Connection.
    # @param create_saml_connection_request [CreateSAMLConnectionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SchemasSAMLConnection]

    def create(create_saml_connection_request, opts = {})
      data, _status_code, _headers = create_with_http_info(create_saml_connection_request, opts)
      data
    end

    # Create a SAML Connection
    # Create a new SAML Connection.
    # @param create_saml_connection_request [CreateSAMLConnectionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SchemasSAMLConnection, Integer, Hash)>] SchemasSAMLConnection data, response status code and response headers
    # POST 
    def create_with_http_info(create_saml_connection_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SAMLConnectionsApi.create_saml_connection ...'
      end
      # verify the required parameter 'create_saml_connection_request' is set
      if @api_client.config.client_side_validation && create_saml_connection_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_saml_connection_request' when calling SAMLConnectionsApi.create_saml_connection"
      end
      # resource path
      local_var_path = '/saml_connections'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_saml_connection_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SchemasSAMLConnection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SAMLConnectionsApi.create_saml_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SAMLConnectionsApi#create_saml_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a SAML Connection
    # Deletes the SAML Connection whose ID matches the provided `id` in the path.
    # @param saml_connection_id [String] The ID of the SAML Connection to delete
    # @param [Hash] opts the optional parameters
    # @return [DeletedObject]

    def delete(saml_connection_id, opts = {})
      data, _status_code, _headers = delete_with_http_info(saml_connection_id, opts)
      data
    end

    # Delete a SAML Connection
    # Deletes the SAML Connection whose ID matches the provided &#x60;id&#x60; in the path.
    # @param saml_connection_id [String] The ID of the SAML Connection to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeletedObject, Integer, Hash)>] DeletedObject data, response status code and response headers
    # DELETE 
    def delete_with_http_info(saml_connection_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SAMLConnectionsApi.delete_saml_connection ...'
      end
      # verify the required parameter 'saml_connection_id' is set
      if @api_client.config.client_side_validation && saml_connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'saml_connection_id' when calling SAMLConnectionsApi.delete_saml_connection"
      end
      # resource path
      local_var_path = '/saml_connections/{saml_connection_id}'.sub('{' + 'saml_connection_id' + '}', CGI.escape(saml_connection_id.to_s))

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
        :operation => :"SAMLConnectionsApi.delete_saml_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SAMLConnectionsApi#delete_saml_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a SAML Connection by ID
    # Fetches the SAML Connection whose ID matches the provided `saml_connection_id` in the path.
    # @param saml_connection_id [String] The ID of the SAML Connection
    # @param [Hash] opts the optional parameters
    # @return [SchemasSAMLConnection]

    def find(saml_connection_id, opts = {})
      data, _status_code, _headers = find_with_http_info(saml_connection_id, opts)
      data
    end

    # Retrieve a SAML Connection by ID
    # Fetches the SAML Connection whose ID matches the provided &#x60;saml_connection_id&#x60; in the path.
    # @param saml_connection_id [String] The ID of the SAML Connection
    # @param [Hash] opts the optional parameters
    # @return [Array<(SchemasSAMLConnection, Integer, Hash)>] SchemasSAMLConnection data, response status code and response headers
    # GET 
    def find_with_http_info(saml_connection_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SAMLConnectionsApi.get_saml_connection ...'
      end
      # verify the required parameter 'saml_connection_id' is set
      if @api_client.config.client_side_validation && saml_connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'saml_connection_id' when calling SAMLConnectionsApi.get_saml_connection"
      end
      # resource path
      local_var_path = '/saml_connections/{saml_connection_id}'.sub('{' + 'saml_connection_id' + '}', CGI.escape(saml_connection_id.to_s))

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
      return_type = opts[:debug_return_type] || 'SchemasSAMLConnection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SAMLConnectionsApi.get_saml_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SAMLConnectionsApi#get_saml_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of SAML Connections for an instance
    # Returns the list of SAML Connections for an instance. Results can be paginated using the optional `limit` and `offset` query parameters. The SAML Connections are ordered by descending creation date and the most recent will be returned first.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @return [SAMLConnections]

    def all(opts = {})
      data, _status_code, _headers = all_with_http_info(opts)
      data
    end

    # Get a list of SAML Connections for an instance
    # Returns the list of SAML Connections for an instance. Results can be paginated using the optional &#x60;limit&#x60; and &#x60;offset&#x60; query parameters. The SAML Connections are ordered by descending creation date and the most recent will be returned first.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @return [Array<(SAMLConnections, Integer, Hash)>] SAMLConnections data, response status code and response headers
    # GET 
    def all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SAMLConnectionsApi.list_saml_connections ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SAMLConnectionsApi.list_saml_connections, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SAMLConnectionsApi.list_saml_connections, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling SAMLConnectionsApi.list_saml_connections, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/saml_connections'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SAMLConnections'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SAMLConnectionsApi.list_saml_connections",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SAMLConnectionsApi#list_saml_connections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a SAML Connection
    # Updates the SAML Connection whose ID matches the provided `id` in the path.
    # @param saml_connection_id [String] The ID of the SAML Connection to update
    # @param update_saml_connection_request [UpdateSAMLConnectionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SchemasSAMLConnection]

    def update(saml_connection_id, update_saml_connection_request, opts = {})
      data, _status_code, _headers = update_with_http_info(saml_connection_id, update_saml_connection_request, opts)
      data
    end

    # Update a SAML Connection
    # Updates the SAML Connection whose ID matches the provided &#x60;id&#x60; in the path.
    # @param saml_connection_id [String] The ID of the SAML Connection to update
    # @param update_saml_connection_request [UpdateSAMLConnectionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SchemasSAMLConnection, Integer, Hash)>] SchemasSAMLConnection data, response status code and response headers
    # PATCH 
    def update_with_http_info(saml_connection_id, update_saml_connection_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SAMLConnectionsApi.update_saml_connection ...'
      end
      # verify the required parameter 'saml_connection_id' is set
      if @api_client.config.client_side_validation && saml_connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'saml_connection_id' when calling SAMLConnectionsApi.update_saml_connection"
      end
      # verify the required parameter 'update_saml_connection_request' is set
      if @api_client.config.client_side_validation && update_saml_connection_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_saml_connection_request' when calling SAMLConnectionsApi.update_saml_connection"
      end
      # resource path
      local_var_path = '/saml_connections/{saml_connection_id}'.sub('{' + 'saml_connection_id' + '}', CGI.escape(saml_connection_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_saml_connection_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SchemasSAMLConnection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SAMLConnectionsApi.update_saml_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SAMLConnectionsApi#update_saml_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
