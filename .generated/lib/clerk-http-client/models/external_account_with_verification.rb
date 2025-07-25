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
  class ExternalAccountWithVerification
    # String representing the object's type. Objects of the same type share the same value.
    attr_accessor :object

    attr_accessor :id

    attr_accessor :provider

    attr_accessor :identification_id

    # The unique ID of the user in the external provider's system
    attr_accessor :provider_user_id

    attr_accessor :approved_scopes

    attr_accessor :email_address

    attr_accessor :first_name

    attr_accessor :last_name

    # Please use `image_url` instead
    attr_accessor :avatar_url

    attr_accessor :image_url

    attr_accessor :username

    attr_accessor :phone_number

    attr_accessor :public_metadata

    attr_accessor :label

    # Unix timestamp of creation 
    attr_accessor :created_at

    # Unix timestamp of creation 
    attr_accessor :updated_at

    attr_accessor :verification

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
        :'provider' => :'provider',
        :'identification_id' => :'identification_id',
        :'provider_user_id' => :'provider_user_id',
        :'approved_scopes' => :'approved_scopes',
        :'email_address' => :'email_address',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'avatar_url' => :'avatar_url',
        :'image_url' => :'image_url',
        :'username' => :'username',
        :'phone_number' => :'phone_number',
        :'public_metadata' => :'public_metadata',
        :'label' => :'label',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'verification' => :'verification'
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
        :'provider' => :'String',
        :'identification_id' => :'String',
        :'provider_user_id' => :'String',
        :'approved_scopes' => :'String',
        :'email_address' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'avatar_url' => :'String',
        :'image_url' => :'String',
        :'username' => :'String',
        :'phone_number' => :'String',
        :'public_metadata' => :'Hash<String, Object>',
        :'label' => :'String',
        :'created_at' => :'Integer',
        :'updated_at' => :'Integer',
        :'verification' => :'ExternalAccountWithVerificationVerification'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'image_url',
        :'username',
        :'phone_number',
        :'label',
        :'verification'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkHttpClient::ExternalAccountWithVerification` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkHttpClient::ExternalAccountWithVerification`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'provider')
        self.provider = attributes[:'provider']
      else
        self.provider = nil
      end

      if attributes.key?(:'identification_id')
        self.identification_id = attributes[:'identification_id']
      else
        self.identification_id = nil
      end

      if attributes.key?(:'provider_user_id')
        self.provider_user_id = attributes[:'provider_user_id']
      else
        self.provider_user_id = nil
      end

      if attributes.key?(:'approved_scopes')
        self.approved_scopes = attributes[:'approved_scopes']
      else
        self.approved_scopes = nil
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      else
        self.email_address = nil
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      else
        self.first_name = nil
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      else
        self.last_name = nil
      end

      if attributes.key?(:'avatar_url')
        self.avatar_url = attributes[:'avatar_url']
      end

      if attributes.key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'public_metadata')
        if (value = attributes[:'public_metadata']).is_a?(Hash)
          self.public_metadata = value
        end
      else
        self.public_metadata = nil
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
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

      if attributes.key?(:'verification')
        self.verification = attributes[:'verification']
      else
        self.verification = nil
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

      if @provider.nil?
        invalid_properties.push('invalid value for "provider", provider cannot be nil.')
      end

      if @identification_id.nil?
        invalid_properties.push('invalid value for "identification_id", identification_id cannot be nil.')
      end

      if @provider_user_id.nil?
        invalid_properties.push('invalid value for "provider_user_id", provider_user_id cannot be nil.')
      end

      if @approved_scopes.nil?
        invalid_properties.push('invalid value for "approved_scopes", approved_scopes cannot be nil.')
      end

      if @email_address.nil?
        invalid_properties.push('invalid value for "email_address", email_address cannot be nil.')
      end

      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @public_metadata.nil?
        invalid_properties.push('invalid value for "public_metadata", public_metadata cannot be nil.')
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
      object_validator = EnumAttributeValidator.new('String', ["external_account", "facebook_account", "google_account"])
      return false unless object_validator.valid?(@object)
      return false if @id.nil?
      return false if @provider.nil?
      return false if @identification_id.nil?
      return false if @provider_user_id.nil?
      return false if @approved_scopes.nil?
      return false if @email_address.nil?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if @public_metadata.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["external_account", "facebook_account", "google_account"])
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
          provider == o.provider &&
          identification_id == o.identification_id &&
          provider_user_id == o.provider_user_id &&
          approved_scopes == o.approved_scopes &&
          email_address == o.email_address &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          avatar_url == o.avatar_url &&
          image_url == o.image_url &&
          username == o.username &&
          phone_number == o.phone_number &&
          public_metadata == o.public_metadata &&
          label == o.label &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          verification == o.verification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [object, id, provider, identification_id, provider_user_id, approved_scopes, email_address, first_name, last_name, avatar_url, image_url, username, phone_number, public_metadata, label, created_at, updated_at, verification].hash
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
