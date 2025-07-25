=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/versioning/available-versions).  Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: 2021-02-05
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: unset

=end

require 'date'
require 'time'

module ClerkHttpClient
  class OAuthApplicationWithSecret
    attr_accessor :object

    attr_accessor :id

    attr_accessor :instance_id

    attr_accessor :name

    attr_accessor :client_id

    attr_accessor :client_uri

    attr_accessor :client_image_url

    attr_accessor :dynamically_registered

    attr_accessor :consent_screen_enabled

    attr_accessor :pkce_required

    attr_accessor :public

    attr_accessor :scopes

    attr_accessor :redirect_uris

    # Deprecated: Use redirect_uris instead. 
    attr_accessor :callback_url

    attr_accessor :authorize_url

    attr_accessor :token_fetch_url

    attr_accessor :user_info_url

    attr_accessor :discovery_url

    attr_accessor :token_introspection_url

    # Unix timestamp of creation. 
    attr_accessor :created_at

    # Unix timestamp of last update. 
    attr_accessor :updated_at

    # Empty if public client. 
    attr_accessor :client_secret

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'object' => :'object',
        :'id' => :'id',
        :'instance_id' => :'instance_id',
        :'name' => :'name',
        :'client_id' => :'client_id',
        :'client_uri' => :'client_uri',
        :'client_image_url' => :'client_image_url',
        :'dynamically_registered' => :'dynamically_registered',
        :'consent_screen_enabled' => :'consent_screen_enabled',
        :'pkce_required' => :'pkce_required',
        :'public' => :'public',
        :'scopes' => :'scopes',
        :'redirect_uris' => :'redirect_uris',
        :'callback_url' => :'callback_url',
        :'authorize_url' => :'authorize_url',
        :'token_fetch_url' => :'token_fetch_url',
        :'user_info_url' => :'user_info_url',
        :'discovery_url' => :'discovery_url',
        :'token_introspection_url' => :'token_introspection_url',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'client_secret' => :'client_secret'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'object' => :'String',
        :'id' => :'String',
        :'instance_id' => :'String',
        :'name' => :'String',
        :'client_id' => :'String',
        :'client_uri' => :'String',
        :'client_image_url' => :'String',
        :'dynamically_registered' => :'Boolean',
        :'consent_screen_enabled' => :'Boolean',
        :'pkce_required' => :'Boolean',
        :'public' => :'Boolean',
        :'scopes' => :'String',
        :'redirect_uris' => :'Array<String>',
        :'callback_url' => :'String',
        :'authorize_url' => :'String',
        :'token_fetch_url' => :'String',
        :'user_info_url' => :'String',
        :'discovery_url' => :'String',
        :'token_introspection_url' => :'String',
        :'created_at' => :'Integer',
        :'updated_at' => :'Integer',
        :'client_secret' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'client_uri',
        :'client_image_url',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'OAuthApplication'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkHttpClient::OAuthApplicationWithSecret` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkHttpClient::OAuthApplicationWithSecret`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'instance_id')
        self.instance_id = attributes[:'instance_id']
      else
        self.instance_id = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      else
        self.client_id = nil
      end

      if attributes.key?(:'client_uri')
        self.client_uri = attributes[:'client_uri']
      else
        self.client_uri = nil
      end

      if attributes.key?(:'client_image_url')
        self.client_image_url = attributes[:'client_image_url']
      else
        self.client_image_url = nil
      end

      if attributes.key?(:'dynamically_registered')
        self.dynamically_registered = attributes[:'dynamically_registered']
      else
        self.dynamically_registered = nil
      end

      if attributes.key?(:'consent_screen_enabled')
        self.consent_screen_enabled = attributes[:'consent_screen_enabled']
      else
        self.consent_screen_enabled = nil
      end

      if attributes.key?(:'pkce_required')
        self.pkce_required = attributes[:'pkce_required']
      else
        self.pkce_required = nil
      end

      if attributes.key?(:'public')
        self.public = attributes[:'public']
      else
        self.public = nil
      end

      if attributes.key?(:'scopes')
        self.scopes = attributes[:'scopes']
      else
        self.scopes = nil
      end

      if attributes.key?(:'redirect_uris')
        if (value = attributes[:'redirect_uris']).is_a?(Array)
          self.redirect_uris = value
        end
      else
        self.redirect_uris = nil
      end

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      else
        self.callback_url = nil
      end

      if attributes.key?(:'authorize_url')
        self.authorize_url = attributes[:'authorize_url']
      else
        self.authorize_url = nil
      end

      if attributes.key?(:'token_fetch_url')
        self.token_fetch_url = attributes[:'token_fetch_url']
      else
        self.token_fetch_url = nil
      end

      if attributes.key?(:'user_info_url')
        self.user_info_url = attributes[:'user_info_url']
      else
        self.user_info_url = nil
      end

      if attributes.key?(:'discovery_url')
        self.discovery_url = attributes[:'discovery_url']
      else
        self.discovery_url = nil
      end

      if attributes.key?(:'token_introspection_url')
        self.token_introspection_url = attributes[:'token_introspection_url']
      else
        self.token_introspection_url = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      else
        self.updated_at = nil
      end

      if attributes.key?(:'client_secret')
        self.client_secret = attributes[:'client_secret']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @instance_id.nil?
        invalid_properties.push('invalid value for "instance_id", instance_id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @client_id.nil?
        invalid_properties.push('invalid value for "client_id", client_id cannot be nil.')
      end

      if @dynamically_registered.nil?
        invalid_properties.push('invalid value for "dynamically_registered", dynamically_registered cannot be nil.')
      end

      if @consent_screen_enabled.nil?
        invalid_properties.push('invalid value for "consent_screen_enabled", consent_screen_enabled cannot be nil.')
      end

      if @pkce_required.nil?
        invalid_properties.push('invalid value for "pkce_required", pkce_required cannot be nil.')
      end

      if @public.nil?
        invalid_properties.push('invalid value for "public", public cannot be nil.')
      end

      if @scopes.nil?
        invalid_properties.push('invalid value for "scopes", scopes cannot be nil.')
      end

      if @redirect_uris.nil?
        invalid_properties.push('invalid value for "redirect_uris", redirect_uris cannot be nil.')
      end

      if @callback_url.nil?
        invalid_properties.push('invalid value for "callback_url", callback_url cannot be nil.')
      end

      if @authorize_url.nil?
        invalid_properties.push('invalid value for "authorize_url", authorize_url cannot be nil.')
      end

      if @token_fetch_url.nil?
        invalid_properties.push('invalid value for "token_fetch_url", token_fetch_url cannot be nil.')
      end

      if @user_info_url.nil?
        invalid_properties.push('invalid value for "user_info_url", user_info_url cannot be nil.')
      end

      if @discovery_url.nil?
        invalid_properties.push('invalid value for "discovery_url", discovery_url cannot be nil.')
      end

      if @token_introspection_url.nil?
        invalid_properties.push('invalid value for "token_introspection_url", token_introspection_url cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @object.nil?
      object_validator = EnumAttributeValidator.new('String', ["oauth_application"])
      return false unless object_validator.valid?(@object)
      return false if @id.nil?
      return false if @instance_id.nil?
      return false if @name.nil?
      return false if @client_id.nil?
      return false if @dynamically_registered.nil?
      return false if @consent_screen_enabled.nil?
      return false if @pkce_required.nil?
      return false if @public.nil?
      return false if @scopes.nil?
      return false if @redirect_uris.nil?
      return false if @callback_url.nil?
      return false if @authorize_url.nil?
      return false if @token_fetch_url.nil?
      return false if @user_info_url.nil?
      return false if @discovery_url.nil?
      return false if @token_introspection_url.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["oauth_application"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          object == o.object &&
          id == o.id &&
          instance_id == o.instance_id &&
          name == o.name &&
          client_id == o.client_id &&
          client_uri == o.client_uri &&
          client_image_url == o.client_image_url &&
          dynamically_registered == o.dynamically_registered &&
          consent_screen_enabled == o.consent_screen_enabled &&
          pkce_required == o.pkce_required &&
          public == o.public &&
          scopes == o.scopes &&
          redirect_uris == o.redirect_uris &&
          callback_url == o.callback_url &&
          authorize_url == o.authorize_url &&
          token_fetch_url == o.token_fetch_url &&
          user_info_url == o.user_info_url &&
          discovery_url == o.discovery_url &&
          token_introspection_url == o.token_introspection_url &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          client_secret == o.client_secret
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [object, id, instance_id, name, client_id, client_uri, client_image_url, dynamically_registered, consent_screen_enabled, pkce_required, public, scopes, redirect_uris, callback_url, authorize_url, token_fetch_url, user_info_url, discovery_url, token_introspection_url, created_at, updated_at, client_secret].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ClerkHttpClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
