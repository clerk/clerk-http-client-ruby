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
  class CreateUserRequest
    # The ID of the user as used in your external systems or your previous authentication solution. Must be unique across your instance.
    attr_accessor :external_id

    # The first name to assign to the user
    attr_accessor :first_name

    # The last name to assign to the user
    attr_accessor :last_name

    # Email addresses to add to the user. Must be unique across your instance. The first email address will be set as the user's primary email address.
    attr_accessor :email_address

    # Phone numbers to add to the user. Must be unique across your instance. The first phone number will be set as the user's primary phone number.
    attr_accessor :phone_number

    # Web3 wallets to add to the user. Must be unique across your instance. The first wallet will be set as the user's primary wallet.
    attr_accessor :web3_wallet

    # The username to give to the user. It must be unique across your instance.
    attr_accessor :username

    # The plaintext password to give the user. Must be at least 8 characters long, and cannot be in any list of hacked passwords.
    attr_accessor :password

    # In case you already have the password digests and not the passwords, you can use them for the newly created user via this property. The digests should be generated with one of the supported algorithms. The hashing algorithm can be specified using the `password_hasher` property.
    attr_accessor :password_digest

    # The hashing algorithm that was used to generate the password digest.  The algorithms we support at the moment are [`bcrypt`](https://en.wikipedia.org/wiki/Bcrypt), [`bcrypt_sha256_django`](https://docs.djangoproject.com/en/4.0/topics/auth/passwords/), [`md5`](https://en.wikipedia.org/wiki/MD5), `pbkdf2_sha1`, `pbkdf2_sha256`, [`pbkdf2_sha256_django`](https://docs.djangoproject.com/en/4.0/topics/auth/passwords/), [`phpass`](https://www.openwall.com/phpass/), `md5_phpass`, [`scrypt_firebase`](https://firebaseopensource.com/projects/firebase/scrypt/), [`scrypt_werkzeug`](https://werkzeug.palletsprojects.com/en/3.0.x/utils/#werkzeug.security.generate_password_hash), [`sha256`](https://en.wikipedia.org/wiki/SHA-2), [`ldap_ssha`](https://www.openldap.org/faq/data/cache/347.html) and the [`argon2`](https://argon2.online/) variants: `argon2i` and `argon2id`.  Each of the supported hashers expects the incoming digest to be in a particular format. See the [Clerk docs](https://clerk.com/docs/references/backend/user/create-user) for more information.
    attr_accessor :password_hasher

    # When set to `true` all password checks are skipped. It is recommended to use this method only when migrating plaintext passwords to Clerk. Upon migration the user base should be prompted to pick stronger password.
    attr_accessor :skip_password_checks

    # When set to `true`, `password` is not required anymore when creating the user and can be omitted. This is useful when you are trying to create a user that doesn't have a password, in an instance that is using passwords. Please note that you cannot use this flag if password is the only way for a user to sign into your instance.
    attr_accessor :skip_password_requirement

    # In case TOTP is configured on the instance, you can provide the secret to enable it on the newly created user without the need to reset it. Please note that currently the supported options are: * Period: 30 seconds * Code length: 6 digits * Algorithm: SHA1
    attr_accessor :totp_secret

    # If Backup Codes are configured on the instance, you can provide them to enable it on the newly created user without the need to reset them. You must provide the backup codes in plain format or the corresponding bcrypt digest.
    attr_accessor :backup_codes

    # Metadata saved on the user, that is visible to both your Frontend and Backend APIs
    attr_accessor :public_metadata

    # Metadata saved on the user, that is only visible to your Backend API
    attr_accessor :private_metadata

    # Metadata saved on the user, that can be updated from both the Frontend and Backend APIs. Note: Since this data can be modified from the frontend, it is not guaranteed to be safe.
    attr_accessor :unsafe_metadata

    # If enabled, user can delete themselves via FAPI. 
    attr_accessor :delete_self_enabled

    # A custom timestamp denoting _when_ the user accepted legal requirements, specified in RFC3339 format (e.g. `2012-10-20T07:15:20.902Z`).
    attr_accessor :legal_accepted_at

    # When set to `true` all legal checks are skipped. It is not recommended to skip legal checks unless you are migrating a user to Clerk.
    attr_accessor :skip_legal_checks

    # If enabled, user can create organizations via FAPI. 
    attr_accessor :create_organization_enabled

    # The maximum number of organizations the user can create. 0 means unlimited. 
    attr_accessor :create_organizations_limit

    # A custom date/time denoting _when_ the user signed up to the application, specified in RFC3339 format (e.g. `2012-10-20T07:15:20.902Z`).
    attr_accessor :created_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'external_id' => :'external_id',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'email_address' => :'email_address',
        :'phone_number' => :'phone_number',
        :'web3_wallet' => :'web3_wallet',
        :'username' => :'username',
        :'password' => :'password',
        :'password_digest' => :'password_digest',
        :'password_hasher' => :'password_hasher',
        :'skip_password_checks' => :'skip_password_checks',
        :'skip_password_requirement' => :'skip_password_requirement',
        :'totp_secret' => :'totp_secret',
        :'backup_codes' => :'backup_codes',
        :'public_metadata' => :'public_metadata',
        :'private_metadata' => :'private_metadata',
        :'unsafe_metadata' => :'unsafe_metadata',
        :'delete_self_enabled' => :'delete_self_enabled',
        :'legal_accepted_at' => :'legal_accepted_at',
        :'skip_legal_checks' => :'skip_legal_checks',
        :'create_organization_enabled' => :'create_organization_enabled',
        :'create_organizations_limit' => :'create_organizations_limit',
        :'created_at' => :'created_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'external_id' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'email_address' => :'Array<String>',
        :'phone_number' => :'Array<String>',
        :'web3_wallet' => :'Array<String>',
        :'username' => :'String',
        :'password' => :'String',
        :'password_digest' => :'String',
        :'password_hasher' => :'String',
        :'skip_password_checks' => :'Boolean',
        :'skip_password_requirement' => :'Boolean',
        :'totp_secret' => :'String',
        :'backup_codes' => :'Array<String>',
        :'public_metadata' => :'Hash<String, Object>',
        :'private_metadata' => :'Hash<String, Object>',
        :'unsafe_metadata' => :'Hash<String, Object>',
        :'delete_self_enabled' => :'Boolean',
        :'legal_accepted_at' => :'String',
        :'skip_legal_checks' => :'Boolean',
        :'create_organization_enabled' => :'Boolean',
        :'create_organizations_limit' => :'Integer',
        :'created_at' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'external_id',
        :'first_name',
        :'last_name',
        :'username',
        :'password',
        :'password_digest',
        :'skip_password_checks',
        :'skip_password_requirement',
        :'totp_secret',
        :'delete_self_enabled',
        :'legal_accepted_at',
        :'skip_legal_checks',
        :'create_organization_enabled',
        :'create_organizations_limit',
        :'created_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ClerkHttpClient::CreateUserRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ClerkHttpClient::CreateUserRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'email_address')
        if (value = attributes[:'email_address']).is_a?(Array)
          self.email_address = value
        end
      end

      if attributes.key?(:'phone_number')
        if (value = attributes[:'phone_number']).is_a?(Array)
          self.phone_number = value
        end
      end

      if attributes.key?(:'web3_wallet')
        if (value = attributes[:'web3_wallet']).is_a?(Array)
          self.web3_wallet = value
        end
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'password_digest')
        self.password_digest = attributes[:'password_digest']
      end

      if attributes.key?(:'password_hasher')
        self.password_hasher = attributes[:'password_hasher']
      end

      if attributes.key?(:'skip_password_checks')
        self.skip_password_checks = attributes[:'skip_password_checks']
      end

      if attributes.key?(:'skip_password_requirement')
        self.skip_password_requirement = attributes[:'skip_password_requirement']
      end

      if attributes.key?(:'totp_secret')
        self.totp_secret = attributes[:'totp_secret']
      end

      if attributes.key?(:'backup_codes')
        if (value = attributes[:'backup_codes']).is_a?(Array)
          self.backup_codes = value
        end
      end

      if attributes.key?(:'public_metadata')
        if (value = attributes[:'public_metadata']).is_a?(Hash)
          self.public_metadata = value
        end
      end

      if attributes.key?(:'private_metadata')
        if (value = attributes[:'private_metadata']).is_a?(Hash)
          self.private_metadata = value
        end
      end

      if attributes.key?(:'unsafe_metadata')
        if (value = attributes[:'unsafe_metadata']).is_a?(Hash)
          self.unsafe_metadata = value
        end
      end

      if attributes.key?(:'delete_self_enabled')
        self.delete_self_enabled = attributes[:'delete_self_enabled']
      end

      if attributes.key?(:'legal_accepted_at')
        self.legal_accepted_at = attributes[:'legal_accepted_at']
      end

      if attributes.key?(:'skip_legal_checks')
        self.skip_legal_checks = attributes[:'skip_legal_checks']
      end

      if attributes.key?(:'create_organization_enabled')
        self.create_organization_enabled = attributes[:'create_organization_enabled']
      end

      if attributes.key?(:'create_organizations_limit')
        self.create_organizations_limit = attributes[:'create_organizations_limit']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          external_id == o.external_id &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          email_address == o.email_address &&
          phone_number == o.phone_number &&
          web3_wallet == o.web3_wallet &&
          username == o.username &&
          password == o.password &&
          password_digest == o.password_digest &&
          password_hasher == o.password_hasher &&
          skip_password_checks == o.skip_password_checks &&
          skip_password_requirement == o.skip_password_requirement &&
          totp_secret == o.totp_secret &&
          backup_codes == o.backup_codes &&
          public_metadata == o.public_metadata &&
          private_metadata == o.private_metadata &&
          unsafe_metadata == o.unsafe_metadata &&
          delete_self_enabled == o.delete_self_enabled &&
          legal_accepted_at == o.legal_accepted_at &&
          skip_legal_checks == o.skip_legal_checks &&
          create_organization_enabled == o.create_organization_enabled &&
          create_organizations_limit == o.create_organizations_limit &&
          created_at == o.created_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [external_id, first_name, last_name, email_address, phone_number, web3_wallet, username, password, password_digest, password_hasher, skip_password_checks, skip_password_requirement, totp_secret, backup_codes, public_metadata, private_metadata, unsafe_metadata, delete_self_enabled, legal_accepted_at, skip_legal_checks, create_organization_enabled, create_organizations_limit, created_at].hash
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
