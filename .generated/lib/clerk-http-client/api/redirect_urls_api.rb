=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/versioning/available-versions).  Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: 2021-02-05
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: unset

=end

require 'cgi'

module ClerkHttpClient
  class RedirectURLsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a redirect URL
    # Create a redirect URL
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRedirectURLRequest] :create_redirect_url_request 
    # @return [RedirectURL]

    def create_redirect_url(opts = {})
      data, _status_code, _headers = create_redirect_url_with_http_info(opts)
      data
    end

    # Create a redirect URL
    # Create a redirect URL
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRedirectURLRequest] :create_redirect_url_request 
    # @return [Array<(RedirectURL, Integer, Hash)>] RedirectURL data, response status code and response headers
    # POST 
    def create_redirect_url_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RedirectURLsApi.create_redirect_url ...'
      end
      # resource path
      local_var_path = '/redirect_urls'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_redirect_url_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'RedirectURL'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RedirectURLsApi.create_redirect_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RedirectURLsApi#create_redirect_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a redirect URL
    # Remove the selected redirect URL from the whitelist of the instance
    # @param id [String] The ID of the redirect URL
    # @param [Hash] opts the optional parameters
    # @return [DeletedObject]

    def delete_redirect_url(id, opts = {})
      data, _status_code, _headers = delete_redirect_url_with_http_info(id, opts)
      data
    end

    # Delete a redirect URL
    # Remove the selected redirect URL from the whitelist of the instance
    # @param id [String] The ID of the redirect URL
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeletedObject, Integer, Hash)>] DeletedObject data, response status code and response headers
    # DELETE 
    def delete_redirect_url_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RedirectURLsApi.delete_redirect_url ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RedirectURLsApi.delete_redirect_url"
      end
      # resource path
      local_var_path = '/redirect_urls/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"RedirectURLsApi.delete_redirect_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RedirectURLsApi#delete_redirect_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a redirect URL
    # Retrieve the details of the redirect URL with the given ID
    # @param id [String] The ID of the redirect URL
    # @param [Hash] opts the optional parameters
    # @return [RedirectURL]

    def get_redirect_url(id, opts = {})
      data, _status_code, _headers = get_redirect_url_with_http_info(id, opts)
      data
    end

    # Retrieve a redirect URL
    # Retrieve the details of the redirect URL with the given ID
    # @param id [String] The ID of the redirect URL
    # @param [Hash] opts the optional parameters
    # @return [Array<(RedirectURL, Integer, Hash)>] RedirectURL data, response status code and response headers
    # GET 
    def get_redirect_url_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RedirectURLsApi.get_redirect_url ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RedirectURLsApi.get_redirect_url"
      end
      # resource path
      local_var_path = '/redirect_urls/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'RedirectURL'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RedirectURLsApi.get_redirect_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RedirectURLsApi#get_redirect_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all redirect URLs
    # Lists all whitelisted redirect_urls for the instance
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :paginated Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated.
    # @option opts [Integer] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Integer] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @return [Array<RedirectURL>]

    def list_redirect_urls(opts = {})
      data, _status_code, _headers = list_redirect_urls_with_http_info(opts)
      data
    end

    # List all redirect URLs
    # Lists all whitelisted redirect_urls for the instance
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :paginated Whether to paginate the results. If true, the results will be paginated. If false, the results will not be paginated.
    # @option opts [Integer] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Integer] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @return [Array<(Array<RedirectURL>, Integer, Hash)>] Array<RedirectURL> data, response status code and response headers
    # GET array
    def list_redirect_urls_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RedirectURLsApi.list_redirect_urls ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RedirectURLsApi.list_redirect_urls, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling RedirectURLsApi.list_redirect_urls, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling RedirectURLsApi.list_redirect_urls, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/redirect_urls'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'paginated'] = opts[:'paginated'] if !opts[:'paginated'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<RedirectURL>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RedirectURLsApi.list_redirect_urls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RedirectURLsApi#list_redirect_urls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
