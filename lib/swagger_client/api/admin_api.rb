=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class AdminApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get queues entries
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id 
    # @option opts [String] :queue_name 
    # @option opts [String] :service_name 
    # @option opts [BOOLEAN] :with_history  (default to true)
    # @option opts [String] :min_date 
    # @option opts [String] :max_date 
    # @option opts [BOOLEAN] :with_in_processing  (default to true)
    # @option opts [BOOLEAN] :with_bus_events  (default to true)
    # @option opts [BOOLEAN] :with_notifications  (default to true)
    # @return [nil]
    def get_queue_entries(opts = {})
      get_queue_entries_with_http_info(opts)
      return nil
    end

    # Get queues entries
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id 
    # @option opts [String] :queue_name 
    # @option opts [String] :service_name 
    # @option opts [BOOLEAN] :with_history 
    # @option opts [String] :min_date 
    # @option opts [String] :max_date 
    # @option opts [BOOLEAN] :with_in_processing 
    # @option opts [BOOLEAN] :with_bus_events 
    # @option opts [BOOLEAN] :with_notifications 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_queue_entries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.get_queue_entries ..."
      end
      # resource path
      local_var_path = "/1.0/kb/admin/queues"

      # query parameters
      query_params = {}
      query_params[:'accountId'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'queueName'] = opts[:'queue_name'] if !opts[:'queue_name'].nil?
      query_params[:'serviceName'] = opts[:'service_name'] if !opts[:'service_name'].nil?
      query_params[:'withHistory'] = opts[:'with_history'] if !opts[:'with_history'].nil?
      query_params[:'minDate'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'maxDate'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'withInProcessing'] = opts[:'with_in_processing'] if !opts[:'with_in_processing'].nil?
      query_params[:'withBusEvents'] = opts[:'with_bus_events'] if !opts[:'with_bus_events'].nil?
      query_params[:'withNotifications'] = opts[:'with_notifications'] if !opts[:'with_notifications'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#get_queue_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Invalidates the given Cache if specified, otherwise invalidates all caches
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cache_name 
    # @return [nil]
    def invalidates_cache(opts = {})
      invalidates_cache_with_http_info(opts)
      return nil
    end

    # Invalidates the given Cache if specified, otherwise invalidates all caches
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cache_name 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def invalidates_cache_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.invalidates_cache ..."
      end
      # resource path
      local_var_path = "/1.0/kb/admin/cache"

      # query parameters
      query_params = {}
      query_params[:'cacheName'] = opts[:'cache_name'] if !opts[:'cache_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#invalidates_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Invalidates Caches per account level
    # 
    # @param account_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def invalidates_cache_by_account(account_id, opts = {})
      invalidates_cache_by_account_with_http_info(account_id, opts)
      return nil
    end

    # Invalidates Caches per account level
    # 
    # @param account_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def invalidates_cache_by_account_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.invalidates_cache_by_account ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AdminApi.invalidates_cache_by_account"
      end
      if @api_client.config.client_side_validation && account_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'account_id' when calling AdminApi.invalidates_cache_by_account, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/admin/cache/accounts/{accountId}".sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#invalidates_cache_by_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Invalidates Caches per tenant level
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tenant_api_key 
    # @return [nil]
    def invalidates_cache_by_tenant(opts = {})
      invalidates_cache_by_tenant_with_http_info(opts)
      return nil
    end

    # Invalidates Caches per tenant level
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tenant_api_key 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def invalidates_cache_by_tenant_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.invalidates_cache_by_tenant ..."
      end
      # resource path
      local_var_path = "/1.0/kb/admin/cache/tenants"

      # query parameters
      query_params = {}
      query_params[:'tenantApiKey'] = opts[:'tenant_api_key'] if !opts[:'tenant_api_key'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#invalidates_cache_by_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Trigger an invoice generation for all parked accounts
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset  (default to 0)
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def trigger_invoice_generation_for_parked_accounts(opts = {})
      trigger_invoice_generation_for_parked_accounts_with_http_info(opts)
      return nil
    end

    # Trigger an invoice generation for all parked accounts
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset 
    # @option opts [Integer] :limit 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def trigger_invoice_generation_for_parked_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.trigger_invoice_generation_for_parked_accounts ..."
      end
      # resource path
      local_var_path = "/1.0/kb/admin/invoices"

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Killbill-CreatedBy'] = opts[:'x_killbill_created_by'] if !opts[:'x_killbill_created_by'].nil?
      header_params[:'X-Killbill-Reason'] = opts[:'x_killbill_reason'] if !opts[:'x_killbill_reason'].nil?
      header_params[:'X-Killbill-Comment'] = opts[:'x_killbill_comment'] if !opts[:'x_killbill_comment'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#trigger_invoice_generation_for_parked_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update existing paymentTransaction and associated payment state
    # 
    # @param payment_id 
    # @param payment_transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [AdminPaymentJson] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def update_payment_transaction_state(payment_id, payment_transaction_id, opts = {})
      update_payment_transaction_state_with_http_info(payment_id, payment_transaction_id, opts)
      return nil
    end

    # Update existing paymentTransaction and associated payment state
    # 
    # @param payment_id 
    # @param payment_transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [AdminPaymentJson] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_payment_transaction_state_with_http_info(payment_id, payment_transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdminApi.update_payment_transaction_state ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling AdminApi.update_payment_transaction_state"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling AdminApi.update_payment_transaction_state, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # verify the required parameter 'payment_transaction_id' is set
      if @api_client.config.client_side_validation && payment_transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_transaction_id' when calling AdminApi.update_payment_transaction_state"
      end
      if @api_client.config.client_side_validation && payment_transaction_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_transaction_id' when calling AdminApi.update_payment_transaction_state, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/admin/payments/{paymentId}/transactions/{paymentTransactionId}".sub('{' + 'paymentId' + '}', payment_id.to_s).sub('{' + 'paymentTransactionId' + '}', payment_transaction_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Killbill-CreatedBy'] = opts[:'x_killbill_created_by'] if !opts[:'x_killbill_created_by'].nil?
      header_params[:'X-Killbill-Reason'] = opts[:'x_killbill_reason'] if !opts[:'x_killbill_reason'].nil?
      header_params[:'X-Killbill-Comment'] = opts[:'x_killbill_comment'] if !opts[:'x_killbill_comment'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#update_payment_transaction_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
