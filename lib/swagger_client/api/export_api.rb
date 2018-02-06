=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class ExportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Export account data
    # 
    # @param account_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [String]
    def export_data_for_account(account_id, opts = {})
      data, _status_code, _headers = export_data_for_account_with_http_info(account_id, opts)
      return data
    end

    # Export account data
    # 
    # @param account_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_killbill_created_by 
    # @option opts [String] :x_killbill_reason 
    # @option opts [String] :x_killbill_comment 
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def export_data_for_account_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExportApi.export_data_for_account ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ExportApi.export_data_for_account"
      end
      if @api_client.config.client_side_validation && account_id !~ Regexp.new(/\\w+-\\w+-\\w+-\\w+-\\w+/)
        fail ArgumentError, "invalid value for 'account_id' when calling ExportApi.export_data_for_account, must conform to the pattern /\\w+-\\w+-\\w+-\\w+-\\w+/."
      end

      # resource path
      local_var_path = "/1.0/kb/export/{accountId}".sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
      header_params[:'X-Killbill-CreatedBy'] = opts[:'x_killbill_created_by'] if !opts[:'x_killbill_created_by'].nil?
      header_params[:'X-Killbill-Reason'] = opts[:'x_killbill_reason'] if !opts[:'x_killbill_reason'].nil?
      header_params[:'X-Killbill-Comment'] = opts[:'x_killbill_comment'] if !opts[:'x_killbill_comment'].nil?

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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExportApi#export_data_for_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
