=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module ClerkHttpClient
  class SignUp
    attr_accessor :object

    attr_accessor :id

    attr_accessor :status

    attr_accessor :required_fields

    attr_accessor :optional_fields

    attr_accessor :missing_fields

    attr_accessor :unverified_fields

    attr_accessor :verifications

    attr_accessor :username

    attr_accessor :email_address

    attr_accessor :phone_number

    attr_accessor :web3_wallet

    attr_accessor :password_enabled

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :unsafe_metadata

    attr_accessor :public_metadata

    attr_accessor :custom_action

    attr_accessor :external_id

    attr_accessor :created_session_id

    attr_accessor :created_user_id

    attr_accessor :abandon_at

    attr_accessor :external_account

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
        :'status' => :'status',
        :'required_fields' => :'required_fields',
        :'optional_fields' => :'optional_fields',
        :'missing_fields' => :'missing_fields',
        :'unverified_fields' => :'unverified_fields',
        :'verifications' => :'verifications',
        :'username' => :'username',
        :'email_address' => :'email_address',
        :'phone_number' => :'phone_number',
        :'web3_wallet' => :'web3_wallet',
        :'password_enabled' => :'password_enabled',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'unsafe_metadata' => :'unsafe_metadata',
        :'public_metadata' => :'public_metadata',
        :'custom_action' => :'custom_action',
        :'external_id' => :'external_id',
        :'created_session_id' => :'created_session_id',
        :'created_user_id' => :'created_user_id',
        :'abandon_at' => :'abandon_at',
        :'external_account' => :'external_account'
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
        :'status' => :'String',
        :'required_fields' => :'Array<String>',
        :'optional_fields' => :'Array<String>',
        :'missing_fields' => :'Array<String>',
        :'unverified_fields' => :'Array<String>',
        :'verifications' => :'Object',
        :'username' => :'String',
        :'email_address' => :'String',
        :'phone_number' => :'String',
        :'web3_wallet' => :'String',
        :'password_enabled' => :'Boolean',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'unsafe_metadata' => :'Object',
        :'public_metadata' => :'Object',
        :'custom_action' => :'Boolean',
        :'external_id' => :'String',
        :'created_session_id' => :'String',
        :'created_user_id' => :'String',
        :'abandon_at' => :'Integer',
        :'external_account' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'username',
        :'email_address',
        :'phone_number',
        :'web3_wallet',
        :'first_name',
        :'last_name',
        :'external_id',
        :'created_session_id',
        :'created_user_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkHttpClient::SignUp` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkHttpClient::SignUp`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'required_fields')
        if (value = attributes[:'required_fields']).is_a?(Array)
          self.required_fields = value
        end
      end

      if attributes.key?(:'optional_fields')
        if (value = attributes[:'optional_fields']).is_a?(Array)
          self.optional_fields = value
        end
      end

      if attributes.key?(:'missing_fields')
        if (value = attributes[:'missing_fields']).is_a?(Array)
          self.missing_fields = value
        end
      end

      if attributes.key?(:'unverified_fields')
        if (value = attributes[:'unverified_fields']).is_a?(Array)
          self.unverified_fields = value
        end
      end

      if attributes.key?(:'verifications')
        self.verifications = attributes[:'verifications']
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'web3_wallet')
        self.web3_wallet = attributes[:'web3_wallet']
      end

      if attributes.key?(:'password_enabled')
        self.password_enabled = attributes[:'password_enabled']
      else
        self.password_enabled = nil
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'unsafe_metadata')
        self.unsafe_metadata = attributes[:'unsafe_metadata']
      end

      if attributes.key?(:'public_metadata')
        self.public_metadata = attributes[:'public_metadata']
      end

      if attributes.key?(:'custom_action')
        self.custom_action = attributes[:'custom_action']
      else
        self.custom_action = nil
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'created_session_id')
        self.created_session_id = attributes[:'created_session_id']
      end

      if attributes.key?(:'created_user_id')
        self.created_user_id = attributes[:'created_user_id']
      end

      if attributes.key?(:'abandon_at')
        self.abandon_at = attributes[:'abandon_at']
      else
        self.abandon_at = nil
      end

      if attributes.key?(:'external_account')
        self.external_account = attributes[:'external_account']
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

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @password_enabled.nil?
        invalid_properties.push('invalid value for "password_enabled", password_enabled cannot be nil.')
      end

      if @custom_action.nil?
        invalid_properties.push('invalid value for "custom_action", custom_action cannot be nil.')
      end

      if @abandon_at.nil?
        invalid_properties.push('invalid value for "abandon_at", abandon_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @object.nil?
      object_validator = EnumAttributeValidator.new('String', ["sign_up_attempt"])
      return false unless object_validator.valid?(@object)
      return false if @id.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["missing_requirements", "complete", "abandoned"])
      return false unless status_validator.valid?(@status)
      return false if @password_enabled.nil?
      return false if @custom_action.nil?
      return false if @abandon_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["sign_up_attempt"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["missing_requirements", "complete", "abandoned"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          object == o.object &&
          id == o.id &&
          status == o.status &&
          required_fields == o.required_fields &&
          optional_fields == o.optional_fields &&
          missing_fields == o.missing_fields &&
          unverified_fields == o.unverified_fields &&
          verifications == o.verifications &&
          username == o.username &&
          email_address == o.email_address &&
          phone_number == o.phone_number &&
          web3_wallet == o.web3_wallet &&
          password_enabled == o.password_enabled &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          unsafe_metadata == o.unsafe_metadata &&
          public_metadata == o.public_metadata &&
          custom_action == o.custom_action &&
          external_id == o.external_id &&
          created_session_id == o.created_session_id &&
          created_user_id == o.created_user_id &&
          abandon_at == o.abandon_at &&
          external_account == o.external_account
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [object, id, status, required_fields, optional_fields, missing_fields, unverified_fields, verifications, username, email_address, phone_number, web3_wallet, password_enabled, first_name, last_name, unsafe_metadata, public_metadata, custom_action, external_id, created_session_id, created_user_id, abandon_at, external_account].hash
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
