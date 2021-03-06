=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module SwaggerClient

  class SubscriptionJson
    attr_accessor :account_id

    attr_accessor :bundle_id

    attr_accessor :subscription_id

    attr_accessor :external_key

    attr_accessor :start_date

    attr_accessor :product_name

    attr_accessor :product_category

    attr_accessor :billing_period

    attr_accessor :phase_type

    attr_accessor :price_list

    attr_accessor :plan_name

    attr_accessor :state

    attr_accessor :source_type

    attr_accessor :cancelled_date

    attr_accessor :charged_through_date

    attr_accessor :billing_start_date

    attr_accessor :billing_end_date

    attr_accessor :bill_cycle_day_local

    attr_accessor :events

    attr_accessor :price_overrides

    attr_accessor :audit_logs

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
        :'account_id' => :'accountId',
        :'bundle_id' => :'bundleId',
        :'subscription_id' => :'subscriptionId',
        :'external_key' => :'externalKey',
        :'start_date' => :'startDate',
        :'product_name' => :'productName',
        :'product_category' => :'productCategory',
        :'billing_period' => :'billingPeriod',
        :'phase_type' => :'phaseType',
        :'price_list' => :'priceList',
        :'plan_name' => :'planName',
        :'state' => :'state',
        :'source_type' => :'sourceType',
        :'cancelled_date' => :'cancelledDate',
        :'charged_through_date' => :'chargedThroughDate',
        :'billing_start_date' => :'billingStartDate',
        :'billing_end_date' => :'billingEndDate',
        :'bill_cycle_day_local' => :'billCycleDayLocal',
        :'events' => :'events',
        :'price_overrides' => :'priceOverrides',
        :'audit_logs' => :'auditLogs'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'String',
        :'bundle_id' => :'String',
        :'subscription_id' => :'String',
        :'external_key' => :'String',
        :'start_date' => :'Date',
        :'product_name' => :'String',
        :'product_category' => :'String',
        :'billing_period' => :'String',
        :'phase_type' => :'String',
        :'price_list' => :'String',
        :'plan_name' => :'String',
        :'state' => :'String',
        :'source_type' => :'String',
        :'cancelled_date' => :'Date',
        :'charged_through_date' => :'Date',
        :'billing_start_date' => :'Date',
        :'billing_end_date' => :'Date',
        :'bill_cycle_day_local' => :'Integer',
        :'events' => :'Array<EventSubscriptionJson>',
        :'price_overrides' => :'Array<PhasePriceOverrideJson>',
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

      if attributes.has_key?(:'bundleId')
        self.bundle_id = attributes[:'bundleId']
      end

      if attributes.has_key?(:'subscriptionId')
        self.subscription_id = attributes[:'subscriptionId']
      end

      if attributes.has_key?(:'externalKey')
        self.external_key = attributes[:'externalKey']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'productName')
        self.product_name = attributes[:'productName']
      end

      if attributes.has_key?(:'productCategory')
        self.product_category = attributes[:'productCategory']
      end

      if attributes.has_key?(:'billingPeriod')
        self.billing_period = attributes[:'billingPeriod']
      end

      if attributes.has_key?(:'phaseType')
        self.phase_type = attributes[:'phaseType']
      end

      if attributes.has_key?(:'priceList')
        self.price_list = attributes[:'priceList']
      end

      if attributes.has_key?(:'planName')
        self.plan_name = attributes[:'planName']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'sourceType')
        self.source_type = attributes[:'sourceType']
      end

      if attributes.has_key?(:'cancelledDate')
        self.cancelled_date = attributes[:'cancelledDate']
      end

      if attributes.has_key?(:'chargedThroughDate')
        self.charged_through_date = attributes[:'chargedThroughDate']
      end

      if attributes.has_key?(:'billingStartDate')
        self.billing_start_date = attributes[:'billingStartDate']
      end

      if attributes.has_key?(:'billingEndDate')
        self.billing_end_date = attributes[:'billingEndDate']
      end

      if attributes.has_key?(:'billCycleDayLocal')
        self.bill_cycle_day_local = attributes[:'billCycleDayLocal']
      end

      if attributes.has_key?(:'events')
        if (value = attributes[:'events']).is_a?(Array)
          self.events = value
        end
      end

      if attributes.has_key?(:'priceOverrides')
        if (value = attributes[:'priceOverrides']).is_a?(Array)
          self.price_overrides = value
        end
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
      if @product_name.nil?
        invalid_properties.push("invalid value for 'product_name', product_name cannot be nil.")
      end

      if @product_category.nil?
        invalid_properties.push("invalid value for 'product_category', product_category cannot be nil.")
      end

      if @billing_period.nil?
        invalid_properties.push("invalid value for 'billing_period', billing_period cannot be nil.")
      end

      if @price_list.nil?
        invalid_properties.push("invalid value for 'price_list', price_list cannot be nil.")
      end

      if @plan_name.nil?
        invalid_properties.push("invalid value for 'plan_name', plan_name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @product_name.nil?
      return false if @product_category.nil?
      product_category_validator = EnumAttributeValidator.new('String', ["BASE", "ADD_ON", "STANDALONE"])
      return false unless product_category_validator.valid?(@product_category)
      return false if @billing_period.nil?
      billing_period_validator = EnumAttributeValidator.new('String', ["DAILY", "WEEKLY", "BIWEEKLY", "THIRTY_DAYS", "MONTHLY", "QUARTERLY", "BIANNUAL", "ANNUAL", "BIENNIAL", "NO_BILLING_PERIOD"])
      return false unless billing_period_validator.valid?(@billing_period)
      phase_type_validator = EnumAttributeValidator.new('String', ["TRIAL", "DISCOUNT", "FIXEDTERM", "EVERGREEN"])
      return false unless phase_type_validator.valid?(@phase_type)
      return false if @price_list.nil?
      return false if @plan_name.nil?
      state_validator = EnumAttributeValidator.new('String', ["PENDING", "ACTIVE", "BLOCKED", "CANCELLED"])
      return false unless state_validator.valid?(@state)
      source_type_validator = EnumAttributeValidator.new('String', ["NATIVE", "MIGRATED", "TRANSFERRED"])
      return false unless source_type_validator.valid?(@source_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_category Object to be assigned
    def product_category=(product_category)
      validator = EnumAttributeValidator.new('String', ["BASE", "ADD_ON", "STANDALONE"])
      unless validator.valid?(product_category)
        fail ArgumentError, "invalid value for 'product_category', must be one of #{validator.allowable_values}."
      end
      @product_category = product_category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_period Object to be assigned
    def billing_period=(billing_period)
      validator = EnumAttributeValidator.new('String', ["DAILY", "WEEKLY", "BIWEEKLY", "THIRTY_DAYS", "MONTHLY", "QUARTERLY", "BIANNUAL", "ANNUAL", "BIENNIAL", "NO_BILLING_PERIOD"])
      unless validator.valid?(billing_period)
        fail ArgumentError, "invalid value for 'billing_period', must be one of #{validator.allowable_values}."
      end
      @billing_period = billing_period
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phase_type Object to be assigned
    def phase_type=(phase_type)
      validator = EnumAttributeValidator.new('String', ["TRIAL", "DISCOUNT", "FIXEDTERM", "EVERGREEN"])
      unless validator.valid?(phase_type)
        fail ArgumentError, "invalid value for 'phase_type', must be one of #{validator.allowable_values}."
      end
      @phase_type = phase_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["PENDING", "ACTIVE", "BLOCKED", "CANCELLED"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_type Object to be assigned
    def source_type=(source_type)
      validator = EnumAttributeValidator.new('String', ["NATIVE", "MIGRATED", "TRANSFERRED"])
      unless validator.valid?(source_type)
        fail ArgumentError, "invalid value for 'source_type', must be one of #{validator.allowable_values}."
      end
      @source_type = source_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          bundle_id == o.bundle_id &&
          subscription_id == o.subscription_id &&
          external_key == o.external_key &&
          start_date == o.start_date &&
          product_name == o.product_name &&
          product_category == o.product_category &&
          billing_period == o.billing_period &&
          phase_type == o.phase_type &&
          price_list == o.price_list &&
          plan_name == o.plan_name &&
          state == o.state &&
          source_type == o.source_type &&
          cancelled_date == o.cancelled_date &&
          charged_through_date == o.charged_through_date &&
          billing_start_date == o.billing_start_date &&
          billing_end_date == o.billing_end_date &&
          bill_cycle_day_local == o.bill_cycle_day_local &&
          events == o.events &&
          price_overrides == o.price_overrides &&
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
      [account_id, bundle_id, subscription_id, external_key, start_date, product_name, product_category, billing_period, phase_type, price_list, plan_name, state, source_type, cancelled_date, charged_through_date, billing_start_date, billing_end_date, bill_cycle_day_local, events, price_overrides, audit_logs].hash
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
