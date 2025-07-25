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
  class PhoneNumbersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a phone number
    # Create a new phone number
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePhoneNumberRequest] :create_phone_number_request 
    # @return [PhoneNumber]

    def create_phone_number(opts = {})
      data, _status_code, _headers = create_phone_number_with_http_info(opts)
      data
    end

    # Create a phone number
    # Create a new phone number
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePhoneNumberRequest] :create_phone_number_request 
    # @return [Array<(PhoneNumber, Integer, Hash)>] PhoneNumber data, response status code and response headers
    # POST 
    def create_phone_number_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneNumbersApi.create_phone_number ...'
      end
      # resource path
      local_var_path = '/phone_numbers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_phone_number_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PhoneNumber'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PhoneNumbersApi.create_phone_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneNumbersApi#create_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a phone number
    # Delete the phone number with the given ID
    # @param phone_number_id [String] The ID of the phone number to delete
    # @param [Hash] opts the optional parameters
    # @return [DeletedObject]

    def delete_phone_number(phone_number_id, opts = {})
      data, _status_code, _headers = delete_phone_number_with_http_info(phone_number_id, opts)
      data
    end

    # Delete a phone number
    # Delete the phone number with the given ID
    # @param phone_number_id [String] The ID of the phone number to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeletedObject, Integer, Hash)>] DeletedObject data, response status code and response headers
    # DELETE 
    def delete_phone_number_with_http_info(phone_number_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneNumbersApi.delete_phone_number ...'
      end
      # verify the required parameter 'phone_number_id' is set
      if @api_client.config.client_side_validation && phone_number_id.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number_id' when calling PhoneNumbersApi.delete_phone_number"
      end
      # resource path
      local_var_path = '/phone_numbers/{phone_number_id}'.sub('{' + 'phone_number_id' + '}', CGI.escape(phone_number_id.to_s))

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
        :operation => :"PhoneNumbersApi.delete_phone_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneNumbersApi#delete_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a phone number
    # Returns the details of a phone number
    # @param phone_number_id [String] The ID of the phone number to retrieve
    # @param [Hash] opts the optional parameters
    # @return [PhoneNumber]

    def get_phone_number(phone_number_id, opts = {})
      data, _status_code, _headers = get_phone_number_with_http_info(phone_number_id, opts)
      data
    end

    # Retrieve a phone number
    # Returns the details of a phone number
    # @param phone_number_id [String] The ID of the phone number to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(PhoneNumber, Integer, Hash)>] PhoneNumber data, response status code and response headers
    # GET 
    def get_phone_number_with_http_info(phone_number_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneNumbersApi.get_phone_number ...'
      end
      # verify the required parameter 'phone_number_id' is set
      if @api_client.config.client_side_validation && phone_number_id.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number_id' when calling PhoneNumbersApi.get_phone_number"
      end
      # resource path
      local_var_path = '/phone_numbers/{phone_number_id}'.sub('{' + 'phone_number_id' + '}', CGI.escape(phone_number_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PhoneNumber'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PhoneNumbersApi.get_phone_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneNumbersApi#get_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a phone number
    # Updates a phone number
    # @param phone_number_id [String] The ID of the phone number to update
    # @param [Hash] opts the optional parameters
    # @option opts [UpdatePhoneNumberRequest] :update_phone_number_request 
    # @return [PhoneNumber]

    def update_phone_number(phone_number_id, opts = {})
      data, _status_code, _headers = update_phone_number_with_http_info(phone_number_id, opts)
      data
    end

    # Update a phone number
    # Updates a phone number
    # @param phone_number_id [String] The ID of the phone number to update
    # @param [Hash] opts the optional parameters
    # @option opts [UpdatePhoneNumberRequest] :update_phone_number_request 
    # @return [Array<(PhoneNumber, Integer, Hash)>] PhoneNumber data, response status code and response headers
    # PATCH 
    def update_phone_number_with_http_info(phone_number_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneNumbersApi.update_phone_number ...'
      end
      # verify the required parameter 'phone_number_id' is set
      if @api_client.config.client_side_validation && phone_number_id.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number_id' when calling PhoneNumbersApi.update_phone_number"
      end
      # resource path
      local_var_path = '/phone_numbers/{phone_number_id}'.sub('{' + 'phone_number_id' + '}', CGI.escape(phone_number_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_phone_number_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'PhoneNumber'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PhoneNumbersApi.update_phone_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneNumbersApi#update_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
