=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class AccountJson
    attr_accessor :account_id

    attr_accessor :name

    attr_accessor :first_name_length

    attr_accessor :external_key

    attr_accessor :email

    attr_accessor :bill_cycle_day_local

    attr_accessor :currency

    attr_accessor :parent_account_id

    attr_accessor :is_payment_delegated_to_parent

    attr_accessor :payment_method_id

    attr_accessor :time_zone

    attr_accessor :address1

    attr_accessor :address2

    attr_accessor :postal_code

    attr_accessor :company

    attr_accessor :city

    attr_accessor :state

    attr_accessor :country

    attr_accessor :locale

    attr_accessor :phone

    attr_accessor :notes

    attr_accessor :is_migrated

    attr_accessor :is_notified_for_invoices

    attr_accessor :account_balance

    attr_accessor :account_cba

    attr_accessor :audit_logs


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'accountId',
        :'name' => :'name',
        :'first_name_length' => :'firstNameLength',
        :'external_key' => :'externalKey',
        :'email' => :'email',
        :'bill_cycle_day_local' => :'billCycleDayLocal',
        :'currency' => :'currency',
        :'parent_account_id' => :'parentAccountId',
        :'is_payment_delegated_to_parent' => :'isPaymentDelegatedToParent',
        :'payment_method_id' => :'paymentMethodId',
        :'time_zone' => :'timeZone',
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'postal_code' => :'postalCode',
        :'company' => :'company',
        :'city' => :'city',
        :'state' => :'state',
        :'country' => :'country',
        :'locale' => :'locale',
        :'phone' => :'phone',
        :'notes' => :'notes',
        :'is_migrated' => :'isMigrated',
        :'is_notified_for_invoices' => :'isNotifiedForInvoices',
        :'account_balance' => :'accountBalance',
        :'account_cba' => :'accountCBA',
        :'audit_logs' => :'auditLogs'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'String',
        :'name' => :'String',
        :'first_name_length' => :'Integer',
        :'external_key' => :'String',
        :'email' => :'String',
        :'bill_cycle_day_local' => :'Integer',
        :'currency' => :'String',
        :'parent_account_id' => :'String',
        :'is_payment_delegated_to_parent' => :'BOOLEAN',
        :'payment_method_id' => :'String',
        :'time_zone' => :'String',
        :'address1' => :'String',
        :'address2' => :'String',
        :'postal_code' => :'String',
        :'company' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'country' => :'String',
        :'locale' => :'String',
        :'phone' => :'String',
        :'notes' => :'String',
        :'is_migrated' => :'BOOLEAN',
        :'is_notified_for_invoices' => :'BOOLEAN',
        :'account_balance' => :'Float',
        :'account_cba' => :'Float',
        :'audit_logs' => :'Array<AuditLogJson>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'firstNameLength')
        self.first_name_length = attributes[:'firstNameLength']
      end

      if attributes.has_key?(:'externalKey')
        self.external_key = attributes[:'externalKey']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'billCycleDayLocal')
        self.bill_cycle_day_local = attributes[:'billCycleDayLocal']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'parentAccountId')
        self.parent_account_id = attributes[:'parentAccountId']
      end

      if attributes.has_key?(:'isPaymentDelegatedToParent')
        self.is_payment_delegated_to_parent = attributes[:'isPaymentDelegatedToParent']
      else
        self.is_payment_delegated_to_parent = false
      end

      if attributes.has_key?(:'paymentMethodId')
        self.payment_method_id = attributes[:'paymentMethodId']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'locale')
        self.locale = attributes[:'locale']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'isMigrated')
        self.is_migrated = attributes[:'isMigrated']
      else
        self.is_migrated = false
      end

      if attributes.has_key?(:'isNotifiedForInvoices')
        self.is_notified_for_invoices = attributes[:'isNotifiedForInvoices']
      else
        self.is_notified_for_invoices = false
      end

      if attributes.has_key?(:'accountBalance')
        self.account_balance = attributes[:'accountBalance']
      end

      if attributes.has_key?(:'accountCBA')
        self.account_cba = attributes[:'accountCBA']
      end

      if attributes.has_key?(:'auditLogs')
        if (value = attributes[:'auditLogs']).is_a?(Array)
          self.audit_logs = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          name == o.name &&
          first_name_length == o.first_name_length &&
          external_key == o.external_key &&
          email == o.email &&
          bill_cycle_day_local == o.bill_cycle_day_local &&
          currency == o.currency &&
          parent_account_id == o.parent_account_id &&
          is_payment_delegated_to_parent == o.is_payment_delegated_to_parent &&
          payment_method_id == o.payment_method_id &&
          time_zone == o.time_zone &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          postal_code == o.postal_code &&
          company == o.company &&
          city == o.city &&
          state == o.state &&
          country == o.country &&
          locale == o.locale &&
          phone == o.phone &&
          notes == o.notes &&
          is_migrated == o.is_migrated &&
          is_notified_for_invoices == o.is_notified_for_invoices &&
          account_balance == o.account_balance &&
          account_cba == o.account_cba &&
          audit_logs == o.audit_logs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_id, name, first_name_length, external_key, email, bill_cycle_day_local, currency, parent_account_id, is_payment_delegated_to_parent, payment_method_id, time_zone, address1, address2, postal_code, company, city, state, country, locale, phone, notes, is_migrated, is_notified_for_invoices, account_balance, account_cba, audit_logs].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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
