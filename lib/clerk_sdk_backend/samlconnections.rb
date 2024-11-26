# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module ClerkSDKBackend
  extend T::Sig
  class SamlConnections
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(limit: T.nilable(::Float), offset: T.nilable(::Float)).returns(::ClerkSDKBackend::Operations::ListSAMLConnectionsResponse) }
    def all(limit = nil, offset = nil)
      # all - Get a list of SAML Connections for an instance
      # Returns the list of SAML Connections for an instance.
      # Results can be paginated using the optional `limit` and `offset` query parameters.
      # The SAML Connections are ordered by descending creation date and the most recent will be returned first.
      request = ::ClerkSDKBackend::Operations::ListSAMLConnectionsRequest.new(
        
        limit: limit,
        offset: offset
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/saml_connections"
      headers = {}
      query_params = Utils.get_query_params(::ClerkSDKBackend::Operations::ListSAMLConnectionsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::ListSAMLConnectionsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::SAMLConnections)
          res.saml_connections = out
        end
      elsif [402, 403, 422].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(request: ::ClerkSDKBackend::Operations::CreateSAMLConnectionRequestBody).returns(::ClerkSDKBackend::Operations::CreateSAMLConnectionResponse) }
    def create(request)
      # create - Create a SAML Connection
      # Create a new SAML Connection.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/saml_connections"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::CreateSAMLConnectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::SchemasSAMLConnection)
          res.schemas_saml_connection = out
        end
      elsif [402, 403, 422].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(saml_connection_id: ::String).returns(::ClerkSDKBackend::Operations::GetSAMLConnectionResponse) }
    def find(saml_connection_id)
      # find - Retrieve a SAML Connection by ID
      # Fetches the SAML Connection whose ID matches the provided `saml_connection_id` in the path.
      request = ::ClerkSDKBackend::Operations::GetSAMLConnectionRequest.new(
        
        saml_connection_id: saml_connection_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::GetSAMLConnectionRequest,
        base_url,
        '/saml_connections/{saml_connection_id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::GetSAMLConnectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::SchemasSAMLConnection)
          res.schemas_saml_connection = out
        end
      elsif [402, 403, 404].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(saml_connection_id: ::String, request_body: ::ClerkSDKBackend::Operations::UpdateSAMLConnectionRequestBody).returns(::ClerkSDKBackend::Operations::UpdateSAMLConnectionResponse) }
    def update(saml_connection_id, request_body)
      # update - Update a SAML Connection
      # Updates the SAML Connection whose ID matches the provided `id` in the path.
      request = ::ClerkSDKBackend::Operations::UpdateSAMLConnectionRequest.new(
        
        saml_connection_id: saml_connection_id,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::UpdateSAMLConnectionRequest,
        base_url,
        '/saml_connections/{saml_connection_id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::UpdateSAMLConnectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::SchemasSAMLConnection)
          res.schemas_saml_connection = out
        end
      elsif [402, 403, 404, 422].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end


    sig { params(saml_connection_id: ::String).returns(::ClerkSDKBackend::Operations::DeleteSAMLConnectionResponse) }
    def delete(saml_connection_id)
      # delete - Delete a SAML Connection
      # Deletes the SAML Connection whose ID matches the provided `id` in the path.
      request = ::ClerkSDKBackend::Operations::DeleteSAMLConnectionRequest.new(
        
        saml_connection_id: saml_connection_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::ClerkSDKBackend::Operations::DeleteSAMLConnectionRequest,
        base_url,
        '/saml_connections/{saml_connection_id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::ClerkSDKBackend::Operations::DeleteSAMLConnectionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::DeletedObject)
          res.deleted_object = out
        end
      elsif [402, 403, 404].include?(r.status)
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::ClerkSDKBackend::Shared::ClerkErrors)
          res.clerk_errors = out
        end
      end
      res
    end
  end
end