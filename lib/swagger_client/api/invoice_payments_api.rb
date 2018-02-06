=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class InvoicePaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Record a chargeback
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [InvoicePaymentTransactionJson] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def create_chargeback(payment_id, opts = {})
      create_chargeback_with_http_info(payment_id, opts)
      return nil
    end

    # Record a chargeback
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [InvoicePaymentTransactionJson] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_chargeback_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.create_chargeback ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.create_chargeback"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling InvoicePaymentsApi.create_chargeback, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/invoicePayments/{paymentId}/chargebacks".sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#create_chargeback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Record a chargebackReversal
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [InvoicePaymentTransactionJson] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def create_chargeback_reversal(payment_id, opts = {})
      create_chargeback_reversal_with_http_info(payment_id, opts)
      return nil
    end

    # Record a chargebackReversal
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [InvoicePaymentTransactionJson] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_chargeback_reversal_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.create_chargeback_reversal ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.create_chargeback_reversal"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling InvoicePaymentsApi.create_chargeback_reversal, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/invoicePayments/{paymentId}/chargebackReversals".sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#create_chargeback_reversal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add custom fields to payment
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CustomFieldJson>] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def create_custom_fields(payment_id, opts = {})
      create_custom_fields_with_http_info(payment_id, opts)
      return nil
    end

    # Add custom fields to payment
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CustomFieldJson>] :body 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_custom_fields_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.create_custom_fields ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.create_custom_fields"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling InvoicePaymentsApi.create_custom_fields, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/invoicePayments/{paymentId}/customFields".sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#create_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Refund a payment, and adjust the invoice if needed
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [InvoicePaymentTransactionJson] :body 
    # @option opts [BOOLEAN] :external_payment  (default to false)
    # @option opts [String] :payment_method_id 
    # @option opts [Array<String>] :plugin_property 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def create_refund_with_adjustments(payment_id, opts = {})
      create_refund_with_adjustments_with_http_info(payment_id, opts)
      return nil
    end

    # Refund a payment, and adjust the invoice if needed
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [InvoicePaymentTransactionJson] :body 
    # @option opts [BOOLEAN] :external_payment 
    # @option opts [String] :payment_method_id 
    # @option opts [Array<String>] :plugin_property 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_refund_with_adjustments_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.create_refund_with_adjustments ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.create_refund_with_adjustments"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling InvoicePaymentsApi.create_refund_with_adjustments, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/invoicePayments/{paymentId}/refunds".sub('{' + 'paymentId' + '}', payment_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'externalPayment'] = opts[:'external_payment'] if !opts[:'external_payment'].nil?
      query_params[:'paymentMethodId'] = opts[:'payment_method_id'] if !opts[:'payment_method_id'].nil?
      query_params[:'pluginProperty'] = @api_client.build_collection_param(opts[:'plugin_property'], :multi) if !opts[:'plugin_property'].nil?

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
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#create_refund_with_adjustments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add tags to payment
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def create_tags(payment_id, opts = {})
      create_tags_with_http_info(payment_id, opts)
      return nil
    end

    # Add tags to payment
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_tags_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.create_tags ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.create_tags"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling InvoicePaymentsApi.create_tags, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/invoicePayments/{paymentId}/tags".sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#create_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove custom fields from payment
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :custom_field_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def delete_custom_fields(payment_id, opts = {})
      delete_custom_fields_with_http_info(payment_id, opts)
      return nil
    end

    # Remove custom fields from payment
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :custom_field_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_custom_fields_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.delete_custom_fields ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.delete_custom_fields"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling InvoicePaymentsApi.delete_custom_fields, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/invoicePayments/{paymentId}/customFields".sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#delete_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove tags from payment
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [nil]
    def delete_tags(payment_id, opts = {})
      delete_tags_with_http_info(payment_id, opts)
      return nil
    end

    # Remove tags from payment
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag_list 
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tags_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.delete_tags ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.delete_tags"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling InvoicePaymentsApi.delete_tags, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/invoicePayments/{paymentId}/tags".sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#delete_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve payment custom fields
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :audit  (default to NONE)
    # @return [Array<CustomFieldJson>]
    def get_custom_fields(payment_id, opts = {})
      data, _status_code, _headers = get_custom_fields_with_http_info(payment_id, opts)
      return data
    end

    # Retrieve payment custom fields
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :audit 
    # @return [Array<(Array<CustomFieldJson>, Fixnum, Hash)>] Array<CustomFieldJson> data, response status code and response headers
    def get_custom_fields_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.get_custom_fields ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.get_custom_fields"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling InvoicePaymentsApi.get_custom_fields, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/invoicePayments/{paymentId}/customFields".sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#get_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a payment by id
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :with_plugin_info  (default to false)
    # @option opts [BOOLEAN] :with_attempts  (default to false)
    # @option opts [Array<String>] :plugin_property 
    # @option opts [String] :audit  (default to NONE)
    # @return [InvoicePaymentJson]
    def get_invoice_payment(payment_id, opts = {})
      data, _status_code, _headers = get_invoice_payment_with_http_info(payment_id, opts)
      return data
    end

    # Retrieve a payment by id
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :with_plugin_info 
    # @option opts [BOOLEAN] :with_attempts 
    # @option opts [Array<String>] :plugin_property 
    # @option opts [String] :audit 
    # @return [Array<(InvoicePaymentJson, Fixnum, Hash)>] InvoicePaymentJson data, response status code and response headers
    def get_invoice_payment_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.get_invoice_payment ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.get_invoice_payment"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling InvoicePaymentsApi.get_invoice_payment, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/invoicePayments/{paymentId}".sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        :return_type => 'InvoicePaymentJson')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#get_invoice_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve payment tags
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :plugin_property 
    # @option opts [String] :audit  (default to NONE)
    # @option opts [BOOLEAN] :included_deleted  (default to false)
    # @return [Array<TagJson>]
    def get_tags(payment_id, opts = {})
      data, _status_code, _headers = get_tags_with_http_info(payment_id, opts)
      return data
    end

    # Retrieve payment tags
    # 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :plugin_property 
    # @option opts [String] :audit 
    # @option opts [BOOLEAN] :included_deleted 
    # @return [Array<(Array<TagJson>, Fixnum, Hash)>] Array<TagJson> data, response status code and response headers
    def get_tags_with_http_info(payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.get_tags ..."
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.get_tags"
      end
      if @api_client.config.client_side_validation && payment_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'payment_id' when calling InvoicePaymentsApi.get_tags, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/invoicePayments/{paymentId}/tags".sub('{' + 'paymentId' + '}', payment_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'pluginProperty'] = @api_client.build_collection_param(opts[:'plugin_property'], :multi) if !opts[:'plugin_property'].nil?
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
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#get_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
