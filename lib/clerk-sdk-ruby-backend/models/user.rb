=begin
#Clerk Backend API

#The Clerk REST Backend API, meant to be accessed by backend servers.  ### Versions  When the API changes in a way that isn't compatible with older versions, a new version is released. Each version is identified by its release date, e.g. `2021-02-05`. For more information, please see [Clerk API Versions](https://clerk.com/docs/backend-requests/versioning/overview).   Please see https://clerk.com/docs for more information.

The version of the OpenAPI document: v1
Contact: support@clerk.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

require 'date'
require 'time'

module ClerkBackend
  class User
    attr_accessor :id

    # String representing the object's type. Objects of the same type share the same value. 
    attr_accessor :object

    attr_accessor :external_id

    attr_accessor :primary_email_address_id

    attr_accessor :primary_phone_number_id

    attr_accessor :primary_web3_wallet_id

    attr_accessor :username

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :profile_image_url

    attr_accessor :image_url

    attr_accessor :has_image

    attr_accessor :public_metadata

    attr_accessor :private_metadata

    attr_accessor :unsafe_metadata

    attr_accessor :email_addresses

    attr_accessor :phone_numbers

    attr_accessor :web3_wallets

    attr_accessor :passkeys

    attr_accessor :password_enabled

    attr_accessor :two_factor_enabled

    attr_accessor :totp_enabled

    attr_accessor :backup_code_enabled

    # Unix timestamp of when MFA was last enabled for this user. It should be noted that this field is not nullified if MFA is disabled. 
    attr_accessor :mfa_enabled_at

    # Unix timestamp of when MFA was last disabled for this user. It should be noted that this field is not nullified if MFA is enabled again. 
    attr_accessor :mfa_disabled_at

    attr_accessor :external_accounts

    attr_accessor :saml_accounts

    # Unix timestamp of last sign-in. 
    attr_accessor :last_sign_in_at

    # Flag to denote whether user is banned or not. 
    attr_accessor :banned

    # Flag to denote whether user is currently locked, i.e. restricted from signing in or not. 
    attr_accessor :locked

    # The number of seconds remaining until the lockout period expires for a locked user. A null value for a locked user indicates that lockout never expires. 
    attr_accessor :lockout_expires_in_seconds

    # The number of verification attempts remaining until the user is locked. Null if account lockout is not enabled. Note: if a user is locked explicitly via the Backend API, they may still have verification attempts remaining. 
    attr_accessor :verification_attempts_remaining

    # Unix timestamp of last update. 
    attr_accessor :updated_at

    # Unix timestamp of creation. 
    attr_accessor :created_at

    # If enabled, user can delete themselves via FAPI. 
    attr_accessor :delete_self_enabled

    # If enabled, user can create organizations via FAPI. 
    attr_accessor :create_organization_enabled

    # The maximum number of organizations the user can create. 0 means unlimited. 
    attr_accessor :create_organizations_limit

    # Unix timestamp of the latest session activity, with day precision. 
    attr_accessor :last_active_at

    # Unix timestamp of when the user accepted the legal requirements. 
    attr_accessor :legal_accepted_at

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
        :'id' => :'id',
        :'object' => :'object',
        :'external_id' => :'external_id',
        :'primary_email_address_id' => :'primary_email_address_id',
        :'primary_phone_number_id' => :'primary_phone_number_id',
        :'primary_web3_wallet_id' => :'primary_web3_wallet_id',
        :'username' => :'username',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'profile_image_url' => :'profile_image_url',
        :'image_url' => :'image_url',
        :'has_image' => :'has_image',
        :'public_metadata' => :'public_metadata',
        :'private_metadata' => :'private_metadata',
        :'unsafe_metadata' => :'unsafe_metadata',
        :'email_addresses' => :'email_addresses',
        :'phone_numbers' => :'phone_numbers',
        :'web3_wallets' => :'web3_wallets',
        :'passkeys' => :'passkeys',
        :'password_enabled' => :'password_enabled',
        :'two_factor_enabled' => :'two_factor_enabled',
        :'totp_enabled' => :'totp_enabled',
        :'backup_code_enabled' => :'backup_code_enabled',
        :'mfa_enabled_at' => :'mfa_enabled_at',
        :'mfa_disabled_at' => :'mfa_disabled_at',
        :'external_accounts' => :'external_accounts',
        :'saml_accounts' => :'saml_accounts',
        :'last_sign_in_at' => :'last_sign_in_at',
        :'banned' => :'banned',
        :'locked' => :'locked',
        :'lockout_expires_in_seconds' => :'lockout_expires_in_seconds',
        :'verification_attempts_remaining' => :'verification_attempts_remaining',
        :'updated_at' => :'updated_at',
        :'created_at' => :'created_at',
        :'delete_self_enabled' => :'delete_self_enabled',
        :'create_organization_enabled' => :'create_organization_enabled',
        :'create_organizations_limit' => :'create_organizations_limit',
        :'last_active_at' => :'last_active_at',
        :'legal_accepted_at' => :'legal_accepted_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'object' => :'String',
        :'external_id' => :'String',
        :'primary_email_address_id' => :'String',
        :'primary_phone_number_id' => :'String',
        :'primary_web3_wallet_id' => :'String',
        :'username' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'profile_image_url' => :'String',
        :'image_url' => :'String',
        :'has_image' => :'Boolean',
        :'public_metadata' => :'Object',
        :'private_metadata' => :'Object',
        :'unsafe_metadata' => :'Object',
        :'email_addresses' => :'Array<EmailAddress>',
        :'phone_numbers' => :'Array<PhoneNumber>',
        :'web3_wallets' => :'Array<Web3Wallet>',
        :'passkeys' => :'Array<SchemasPasskey>',
        :'password_enabled' => :'Boolean',
        :'two_factor_enabled' => :'Boolean',
        :'totp_enabled' => :'Boolean',
        :'backup_code_enabled' => :'Boolean',
        :'mfa_enabled_at' => :'Integer',
        :'mfa_disabled_at' => :'Integer',
        :'external_accounts' => :'Array<Object>',
        :'saml_accounts' => :'Array<SAMLAccount>',
        :'last_sign_in_at' => :'Integer',
        :'banned' => :'Boolean',
        :'locked' => :'Boolean',
        :'lockout_expires_in_seconds' => :'Integer',
        :'verification_attempts_remaining' => :'Integer',
        :'updated_at' => :'Integer',
        :'created_at' => :'Integer',
        :'delete_self_enabled' => :'Boolean',
        :'create_organization_enabled' => :'Boolean',
        :'create_organizations_limit' => :'Integer',
        :'last_active_at' => :'Integer',
        :'legal_accepted_at' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'external_id',
        :'primary_email_address_id',
        :'primary_phone_number_id',
        :'primary_web3_wallet_id',
        :'username',
        :'first_name',
        :'last_name',
        :'private_metadata',
        :'mfa_enabled_at',
        :'mfa_disabled_at',
        :'last_sign_in_at',
        :'lockout_expires_in_seconds',
        :'verification_attempts_remaining',
        :'create_organizations_limit',
        :'last_active_at',
        :'legal_accepted_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkBackend::User` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkBackend::User`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'primary_email_address_id')
        self.primary_email_address_id = attributes[:'primary_email_address_id']
      end

      if attributes.key?(:'primary_phone_number_id')
        self.primary_phone_number_id = attributes[:'primary_phone_number_id']
      end

      if attributes.key?(:'primary_web3_wallet_id')
        self.primary_web3_wallet_id = attributes[:'primary_web3_wallet_id']
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'profile_image_url')
        self.profile_image_url = attributes[:'profile_image_url']
      end

      if attributes.key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.key?(:'has_image')
        self.has_image = attributes[:'has_image']
      end

      if attributes.key?(:'public_metadata')
        self.public_metadata = attributes[:'public_metadata']
      end

      if attributes.key?(:'private_metadata')
        self.private_metadata = attributes[:'private_metadata']
      end

      if attributes.key?(:'unsafe_metadata')
        self.unsafe_metadata = attributes[:'unsafe_metadata']
      end

      if attributes.key?(:'email_addresses')
        if (value = attributes[:'email_addresses']).is_a?(Array)
          self.email_addresses = value
        end
      end

      if attributes.key?(:'phone_numbers')
        if (value = attributes[:'phone_numbers']).is_a?(Array)
          self.phone_numbers = value
        end
      end

      if attributes.key?(:'web3_wallets')
        if (value = attributes[:'web3_wallets']).is_a?(Array)
          self.web3_wallets = value
        end
      end

      if attributes.key?(:'passkeys')
        if (value = attributes[:'passkeys']).is_a?(Array)
          self.passkeys = value
        end
      end

      if attributes.key?(:'password_enabled')
        self.password_enabled = attributes[:'password_enabled']
      end

      if attributes.key?(:'two_factor_enabled')
        self.two_factor_enabled = attributes[:'two_factor_enabled']
      end

      if attributes.key?(:'totp_enabled')
        self.totp_enabled = attributes[:'totp_enabled']
      end

      if attributes.key?(:'backup_code_enabled')
        self.backup_code_enabled = attributes[:'backup_code_enabled']
      end

      if attributes.key?(:'mfa_enabled_at')
        self.mfa_enabled_at = attributes[:'mfa_enabled_at']
      end

      if attributes.key?(:'mfa_disabled_at')
        self.mfa_disabled_at = attributes[:'mfa_disabled_at']
      end

      if attributes.key?(:'external_accounts')
        if (value = attributes[:'external_accounts']).is_a?(Array)
          self.external_accounts = value
        end
      end

      if attributes.key?(:'saml_accounts')
        if (value = attributes[:'saml_accounts']).is_a?(Array)
          self.saml_accounts = value
        end
      end

      if attributes.key?(:'last_sign_in_at')
        self.last_sign_in_at = attributes[:'last_sign_in_at']
      end

      if attributes.key?(:'banned')
        self.banned = attributes[:'banned']
      end

      if attributes.key?(:'locked')
        self.locked = attributes[:'locked']
      end

      if attributes.key?(:'lockout_expires_in_seconds')
        self.lockout_expires_in_seconds = attributes[:'lockout_expires_in_seconds']
      end

      if attributes.key?(:'verification_attempts_remaining')
        self.verification_attempts_remaining = attributes[:'verification_attempts_remaining']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'delete_self_enabled')
        self.delete_self_enabled = attributes[:'delete_self_enabled']
      end

      if attributes.key?(:'create_organization_enabled')
        self.create_organization_enabled = attributes[:'create_organization_enabled']
      end

      if attributes.key?(:'create_organizations_limit')
        self.create_organizations_limit = attributes[:'create_organizations_limit']
      end

      if attributes.key?(:'last_active_at')
        self.last_active_at = attributes[:'last_active_at']
      end

      if attributes.key?(:'legal_accepted_at')
        self.legal_accepted_at = attributes[:'legal_accepted_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      object_validator = EnumAttributeValidator.new('String', ["user"])
      return false unless object_validator.valid?(@object)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["user"])
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
          id == o.id &&
          object == o.object &&
          external_id == o.external_id &&
          primary_email_address_id == o.primary_email_address_id &&
          primary_phone_number_id == o.primary_phone_number_id &&
          primary_web3_wallet_id == o.primary_web3_wallet_id &&
          username == o.username &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          profile_image_url == o.profile_image_url &&
          image_url == o.image_url &&
          has_image == o.has_image &&
          public_metadata == o.public_metadata &&
          private_metadata == o.private_metadata &&
          unsafe_metadata == o.unsafe_metadata &&
          email_addresses == o.email_addresses &&
          phone_numbers == o.phone_numbers &&
          web3_wallets == o.web3_wallets &&
          passkeys == o.passkeys &&
          password_enabled == o.password_enabled &&
          two_factor_enabled == o.two_factor_enabled &&
          totp_enabled == o.totp_enabled &&
          backup_code_enabled == o.backup_code_enabled &&
          mfa_enabled_at == o.mfa_enabled_at &&
          mfa_disabled_at == o.mfa_disabled_at &&
          external_accounts == o.external_accounts &&
          saml_accounts == o.saml_accounts &&
          last_sign_in_at == o.last_sign_in_at &&
          banned == o.banned &&
          locked == o.locked &&
          lockout_expires_in_seconds == o.lockout_expires_in_seconds &&
          verification_attempts_remaining == o.verification_attempts_remaining &&
          updated_at == o.updated_at &&
          created_at == o.created_at &&
          delete_self_enabled == o.delete_self_enabled &&
          create_organization_enabled == o.create_organization_enabled &&
          create_organizations_limit == o.create_organizations_limit &&
          last_active_at == o.last_active_at &&
          legal_accepted_at == o.legal_accepted_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, object, external_id, primary_email_address_id, primary_phone_number_id, primary_web3_wallet_id, username, first_name, last_name, profile_image_url, image_url, has_image, public_metadata, private_metadata, unsafe_metadata, email_addresses, phone_numbers, web3_wallets, passkeys, password_enabled, two_factor_enabled, totp_enabled, backup_code_enabled, mfa_enabled_at, mfa_disabled_at, external_accounts, saml_accounts, last_sign_in_at, banned, locked, lockout_expires_in_seconds, verification_attempts_remaining, updated_at, created_at, delete_self_enabled, create_organization_enabled, create_organizations_limit, last_active_at, legal_accepted_at].hash
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
        klass = ClerkBackend.const_get(type)
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
