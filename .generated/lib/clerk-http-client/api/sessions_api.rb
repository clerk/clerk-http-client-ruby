=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: unset

=end

require 'cgi'

module ClerkHttpClient
  class SessionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new active session
    # Create a new active session for the provided user ID.  **This operation is intended only for use in testing, and is not available for production instances.** If you are looking to generate a user session from the backend, we recommend using the [Sign-in Tokens](https://clerk.com/docs/reference/backend-api/tag/Sign-in-Tokens#operation/CreateSignInToken) resource instead.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSessionRequest] :create_session_request 
    # @return [Session]

    def create_session(opts = {})
      data, _status_code, _headers = create_session_with_http_info(opts)
      data
    end

    # Create a new active session
    # Create a new active session for the provided user ID.  **This operation is intended only for use in testing, and is not available for production instances.** If you are looking to generate a user session from the backend, we recommend using the [Sign-in Tokens](https://clerk.com/docs/reference/backend-api/tag/Sign-in-Tokens#operation/CreateSignInToken) resource instead.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSessionRequest] :create_session_request 
    # @return [Array<(Session, Integer, Hash)>] Session data, response status code and response headers
    # POST 
    def create_session_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionsApi.create_session ...'
      end
      # resource path
      local_var_path = '/sessions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_session_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Session'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SessionsApi.create_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionsApi#create_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a session token
    # Creates a session JSON Web Token (JWT) based on a session.
    # @param session_id [String] The ID of the session
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSessionTokenRequest] :create_session_token_request 
    # @return [CreateSessionToken200Response]

    def create_session_token(session_id, opts = {})
      data, _status_code, _headers = create_session_token_with_http_info(session_id, opts)
      data
    end

    # Create a session token
    # Creates a session JSON Web Token (JWT) based on a session.
    # @param session_id [String] The ID of the session
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSessionTokenRequest] :create_session_token_request 
    # @return [Array<(CreateSessionToken200Response, Integer, Hash)>] CreateSessionToken200Response data, response status code and response headers
    # POST 
    def create_session_token_with_http_info(session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionsApi.create_session_token ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling SessionsApi.create_session_token"
      end
      # resource path
      local_var_path = '/sessions/{session_id}/tokens'.sub('{' + 'session_id' + '}', CGI.escape(session_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_session_token_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateSessionToken200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SessionsApi.create_session_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionsApi#create_session_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a session token from a jwt template
    # Creates a JSON Web Token(JWT) based on a session and a JWT Template name defined for your instance
    # @param session_id [String] The ID of the session
    # @param template_name [String] The name of the JWT Template defined in your instance (e.g. &#x60;custom_hasura&#x60;).
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSessionTokenFromTemplateRequest] :create_session_token_from_template_request 
    # @return [CreateSessionToken200Response]

    def create_session_token_from_template(session_id, template_name, opts = {})
      data, _status_code, _headers = create_session_token_from_template_with_http_info(session_id, template_name, opts)
      data
    end

    # Create a session token from a jwt template
    # Creates a JSON Web Token(JWT) based on a session and a JWT Template name defined for your instance
    # @param session_id [String] The ID of the session
    # @param template_name [String] The name of the JWT Template defined in your instance (e.g. &#x60;custom_hasura&#x60;).
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSessionTokenFromTemplateRequest] :create_session_token_from_template_request 
    # @return [Array<(CreateSessionToken200Response, Integer, Hash)>] CreateSessionToken200Response data, response status code and response headers
    # POST 
    def create_session_token_from_template_with_http_info(session_id, template_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionsApi.create_session_token_from_template ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling SessionsApi.create_session_token_from_template"
      end
      # verify the required parameter 'template_name' is set
      if @api_client.config.client_side_validation && template_name.nil?
        fail ArgumentError, "Missing the required parameter 'template_name' when calling SessionsApi.create_session_token_from_template"
      end
      # resource path
      local_var_path = '/sessions/{session_id}/tokens/{template_name}'.sub('{' + 'session_id' + '}', CGI.escape(session_id.to_s)).sub('{' + 'template_name' + '}', CGI.escape(template_name.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_session_token_from_template_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateSessionToken200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SessionsApi.create_session_token_from_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionsApi#create_session_token_from_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a session
    # Retrieve the details of a session
    # @param session_id [String] The ID of the session
    # @param [Hash] opts the optional parameters
    # @return [Session]

    def get_session(session_id, opts = {})
      data, _status_code, _headers = get_session_with_http_info(session_id, opts)
      data
    end

    # Retrieve a session
    # Retrieve the details of a session
    # @param session_id [String] The ID of the session
    # @param [Hash] opts the optional parameters
    # @return [Array<(Session, Integer, Hash)>] Session data, response status code and response headers
    # GET 
    def get_session_with_http_info(session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionsApi.get_session ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling SessionsApi.get_session"
      end
      # resource path
      local_var_path = '/sessions/{session_id}'.sub('{' + 'session_id' + '}', CGI.escape(session_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Session'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SessionsApi.get_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionsApi#get_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all sessions
    # Returns a list of all sessions. The sessions are returned sorted by creation date, with the newest sessions appearing first. **Deprecation Notice (2024-01-01):** All parameters were initially considered optional, however moving forward at least one of `client_id` or `user_id` parameters should be provided.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id List sessions for the given client
    # @option opts [String] :user_id List sessions for the given user
    # @option opts [String] :status Filter sessions by the provided status
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @return [Array<Session>]

    def get_session_list(opts = {})
      data, _status_code, _headers = get_session_list_with_http_info(opts)
      data
    end

    # List all sessions
    # Returns a list of all sessions. The sessions are returned sorted by creation date, with the newest sessions appearing first. **Deprecation Notice (2024-01-01):** All parameters were initially considered optional, however moving forward at least one of &#x60;client_id&#x60; or &#x60;user_id&#x60; parameters should be provided.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id List sessions for the given client
    # @option opts [String] :user_id List sessions for the given user
    # @option opts [String] :status Filter sessions by the provided status
    # @option opts [Float] :limit Applies a limit to the number of results returned. Can be used for paginating the results together with &#x60;offset&#x60;. (default to 10)
    # @option opts [Float] :offset Skip the first &#x60;offset&#x60; results when paginating. Needs to be an integer greater or equal to zero. To be used in conjunction with &#x60;limit&#x60;. (default to 0)
    # @return [Array<(Array<Session>, Integer, Hash)>] Array<Session> data, response status code and response headers
    # GET array
    def get_session_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionsApi.get_session_list ...'
      end
      allowable_values = ["abandoned", "active", "ended", "expired", "removed", "replaced", "revoked"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SessionsApi.get_session_list, must be smaller than or equal to 500.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SessionsApi.get_session_list, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling SessionsApi.get_session_list, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/sessions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'client_id'] = opts[:'client_id'] if !opts[:'client_id'].nil?
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<Session>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SessionsApi.get_session_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionsApi#get_session_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke a session
    # Sets the status of a session as \"revoked\", which is an unauthenticated state. In multi-session mode, a revoked session will still be returned along with its client object, however the user will need to sign in again.
    # @param session_id [String] The ID of the session
    # @param [Hash] opts the optional parameters
    # @return [Session]

    def revoke_session(session_id, opts = {})
      data, _status_code, _headers = revoke_session_with_http_info(session_id, opts)
      data
    end

    # Revoke a session
    # Sets the status of a session as \&quot;revoked\&quot;, which is an unauthenticated state. In multi-session mode, a revoked session will still be returned along with its client object, however the user will need to sign in again.
    # @param session_id [String] The ID of the session
    # @param [Hash] opts the optional parameters
    # @return [Array<(Session, Integer, Hash)>] Session data, response status code and response headers
    # POST 
    def revoke_session_with_http_info(session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionsApi.revoke_session ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling SessionsApi.revoke_session"
      end
      # resource path
      local_var_path = '/sessions/{session_id}/revoke'.sub('{' + 'session_id' + '}', CGI.escape(session_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Session'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SessionsApi.revoke_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionsApi#revoke_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify a session
    # Returns the session if it is authenticated, otherwise returns an error. WARNING: This endpoint is deprecated and will be removed in future versions. We strongly recommend switching to networkless verification using short-lived session tokens,          which is implemented transparently in all recent SDK versions (e.g. [NodeJS SDK](https://clerk.com/docs/backend-requests/handling/nodejs#clerk-express-require-auth)).          For more details on how networkless verification works, refer to our [Session Tokens documentation](https://clerk.com/docs/backend-requests/resources/session-tokens).
    # @param session_id [String] The ID of the session
    # @param [Hash] opts the optional parameters
    # @option opts [VerifySessionRequest] :verify_session_request Parameters.
    # @return [Session]

    def verify_session(session_id, opts = {})
      data, _status_code, _headers = verify_session_with_http_info(session_id, opts)
      data
    end

    # Verify a session
    # Returns the session if it is authenticated, otherwise returns an error. WARNING: This endpoint is deprecated and will be removed in future versions. We strongly recommend switching to networkless verification using short-lived session tokens,          which is implemented transparently in all recent SDK versions (e.g. [NodeJS SDK](https://clerk.com/docs/backend-requests/handling/nodejs#clerk-express-require-auth)).          For more details on how networkless verification works, refer to our [Session Tokens documentation](https://clerk.com/docs/backend-requests/resources/session-tokens).
    # @param session_id [String] The ID of the session
    # @param [Hash] opts the optional parameters
    # @option opts [VerifySessionRequest] :verify_session_request Parameters.
    # @return [Array<(Session, Integer, Hash)>] Session data, response status code and response headers
    # POST 
    def verify_session_with_http_info(session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionsApi.verify_session ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling SessionsApi.verify_session"
      end
      # resource path
      local_var_path = '/sessions/{session_id}/verify'.sub('{' + 'session_id' + '}', CGI.escape(session_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'verify_session_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Session'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SessionsApi.verify_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionsApi#verify_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
