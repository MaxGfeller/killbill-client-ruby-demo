=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class PaymentTransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add custom fields to payment transaction
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CustomFieldJson>] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def create_custom_fields(transaction_id, opts = {})
      create_custom_fields_with_http_info(transaction_id, opts)
      return nil
    end

    # Add custom fields to payment transaction
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CustomFieldJson>] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_custom_fields_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTransactionsApi.create_custom_fields ..."
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTransactionsApi.create_custom_fields"
      end
      if @api_client.config.client_side_validation && transaction_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'transaction_id' when calling PaymentTransactionsApi.create_custom_fields, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/paymentTransactions/{transactionId}/customFields".sub('{' + 'transactionId' + '}', transaction_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTransactionsApi#create_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add tags to payment transaction
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def create_tags(transaction_id, opts = {})
      create_tags_with_http_info(transaction_id, opts)
      return nil
    end

    # Add tags to payment transaction
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_tags_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTransactionsApi.create_tags ..."
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTransactionsApi.create_tags"
      end
      if @api_client.config.client_side_validation && transaction_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'transaction_id' when calling PaymentTransactionsApi.create_tags, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/paymentTransactions/{transactionId}/tags".sub('{' + 'transactionId' + '}', transaction_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'tagList'] = opts[:'tag_list'] if !opts[:'tag_list'].nil?

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
        @api_client.config.logger.debug "API called: PaymentTransactionsApi#create_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove custom fields from payment transaction
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :custom_field_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def delete_custom_fields(transaction_id, opts = {})
      delete_custom_fields_with_http_info(transaction_id, opts)
      return nil
    end

    # Remove custom fields from payment transaction
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :custom_field_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_custom_fields_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTransactionsApi.delete_custom_fields ..."
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTransactionsApi.delete_custom_fields"
      end
      if @api_client.config.client_side_validation && transaction_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'transaction_id' when calling PaymentTransactionsApi.delete_custom_fields, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/paymentTransactions/{transactionId}/customFields".sub('{' + 'transactionId' + '}', transaction_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'customFieldList'] = opts[:'custom_field_list'] if !opts[:'custom_field_list'].nil?

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTransactionsApi#delete_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove tags from payment transaction
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def delete_tags(transaction_id, opts = {})
      delete_tags_with_http_info(transaction_id, opts)
      return nil
    end

    # Remove tags from payment transaction
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tags_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTransactionsApi.delete_tags ..."
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTransactionsApi.delete_tags"
      end
      if @api_client.config.client_side_validation && transaction_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'transaction_id' when calling PaymentTransactionsApi.delete_tags, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/paymentTransactions/{transactionId}/tags".sub('{' + 'transactionId' + '}', transaction_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'tagList'] = opts[:'tag_list'] if !opts[:'tag_list'].nil?

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTransactionsApi#delete_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve payment transaction custom fields
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :audit  (default to NONE)
    # @return [Array<CustomFieldJson>]
    def get_custom_fields(transaction_id, opts = {})
      data, _status_code, _headers = get_custom_fields_with_http_info(transaction_id, opts)
      return data
    end

    # Retrieve payment transaction custom fields
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :audit 
    # @return [Array<(Array<CustomFieldJson>, Fixnum, Hash)>] Array<CustomFieldJson> data, response status code and response headers
    def get_custom_fields_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTransactionsApi.get_custom_fields ..."
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTransactionsApi.get_custom_fields"
      end
      if @api_client.config.client_side_validation && transaction_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'transaction_id' when calling PaymentTransactionsApi.get_custom_fields, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/paymentTransactions/{transactionId}/customFields".sub('{' + 'transactionId' + '}', transaction_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'audit'] = opts[:'audit'] if !opts[:'audit'].nil?

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
        :auth_names => auth_names,
        :return_type => 'Array<CustomFieldJson>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTransactionsApi#get_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a payment by transaction id
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :with_plugin_info  (default to false)
    # @option opts [BOOLEAN] :with_attempts  (default to false)
    # @option opts [Array<String>] :plugin_property 
    # @option opts [String] :audit  (default to NONE)
    # @return [PaymentJson]
    def get_payment_by_transaction_id(transaction_id, opts = {})
      data, _status_code, _headers = get_payment_by_transaction_id_with_http_info(transaction_id, opts)
      return data
    end

    # Retrieve a payment by transaction id
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :with_plugin_info 
    # @option opts [BOOLEAN] :with_attempts 
    # @option opts [Array<String>] :plugin_property 
    # @option opts [String] :audit 
    # @return [Array<(PaymentJson, Fixnum, Hash)>] PaymentJson data, response status code and response headers
    def get_payment_by_transaction_id_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTransactionsApi.get_payment_by_transaction_id ..."
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTransactionsApi.get_payment_by_transaction_id"
      end
      if @api_client.config.client_side_validation && transaction_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'transaction_id' when calling PaymentTransactionsApi.get_payment_by_transaction_id, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/paymentTransactions/{transactionId}".sub('{' + 'transactionId' + '}', transaction_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'withPluginInfo'] = opts[:'with_plugin_info'] if !opts[:'with_plugin_info'].nil?
      query_params[:'withAttempts'] = opts[:'with_attempts'] if !opts[:'with_attempts'].nil?
      query_params[:'pluginProperty'] = @api_client.build_collection_param(opts[:'plugin_property'], :multi) if !opts[:'plugin_property'].nil?
      query_params[:'audit'] = opts[:'audit'] if !opts[:'audit'].nil?

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
        :auth_names => auth_names,
        :return_type => 'PaymentJson')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTransactionsApi#get_payment_by_transaction_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve payment transaction tags
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :audit  (default to NONE)
    # @option opts [BOOLEAN] :included_deleted  (default to false)
    # @return [Array<TagJson>]
    def get_tags(transaction_id, opts = {})
      data, _status_code, _headers = get_tags_with_http_info(transaction_id, opts)
      return data
    end

    # Retrieve payment transaction tags
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :audit 
    # @option opts [BOOLEAN] :included_deleted 
    # @return [Array<(Array<TagJson>, Fixnum, Hash)>] Array<TagJson> data, response status code and response headers
    def get_tags_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTransactionsApi.get_tags ..."
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTransactionsApi.get_tags"
      end
      if @api_client.config.client_side_validation && transaction_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'transaction_id' when calling PaymentTransactionsApi.get_tags, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/paymentTransactions/{transactionId}/tags".sub('{' + 'transactionId' + '}', transaction_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'audit'] = opts[:'audit'] if !opts[:'audit'].nil?
      query_params[:'includedDeleted'] = opts[:'included_deleted'] if !opts[:'included_deleted'].nil?

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
        :auth_names => auth_names,
        :return_type => 'Array<TagJson>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTransactionsApi#get_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark a pending payment transaction as succeeded or failed
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [PaymentTransactionJson] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def notify_state_changed(transaction_id, opts = {})
      notify_state_changed_with_http_info(transaction_id, opts)
      return nil
    end

    # Mark a pending payment transaction as succeeded or failed
    # 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @option opts [PaymentTransactionJson] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def notify_state_changed_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTransactionsApi.notify_state_changed ..."
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTransactionsApi.notify_state_changed"
      end
      if @api_client.config.client_side_validation && transaction_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'transaction_id' when calling PaymentTransactionsApi.notify_state_changed, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/paymentTransactions/{transactionId}".sub('{' + 'transactionId' + '}', transaction_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTransactionsApi#notify_state_changed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
