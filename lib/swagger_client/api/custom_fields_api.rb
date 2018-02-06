=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module SwaggerClient
  class CustomFieldsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List custom fields
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset  (default to 0)
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :audit  (default to NONE)
    # @return [Array<CustomFieldJson>]
    def get_custom_fields(opts = {})
      data, _status_code, _headers = get_custom_fields_with_http_info(opts)
      return data
    end

    # List custom fields
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset 
    # @option opts [Integer] :limit 
    # @option opts [String] :audit 
    # @return [Array<(Array<CustomFieldJson>, Fixnum, Hash)>] Array<CustomFieldJson> data, response status code and response headers
    def get_custom_fields_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomFieldsApi.get_custom_fields ..."
      end
      # resource path
      local_var_path = "/1.0/kb/customFields/pagination"

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
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
        @api_client.config.logger.debug "API called: CustomFieldsApi#get_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search custom fields
    # 
    # @param search_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset  (default to 0)
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :audit  (default to NONE)
    # @return [Array<CustomFieldJson>]
    def search_custom_fields(search_key, opts = {})
      data, _status_code, _headers = search_custom_fields_with_http_info(search_key, opts)
      return data
    end

    # Search custom fields
    # 
    # @param search_key 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset 
    # @option opts [Integer] :limit 
    # @option opts [String] :audit 
    # @return [Array<(Array<CustomFieldJson>, Fixnum, Hash)>] Array<CustomFieldJson> data, response status code and response headers
    def search_custom_fields_with_http_info(search_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomFieldsApi.search_custom_fields ..."
      end
      # verify the required parameter 'search_key' is set
      if @api_client.config.client_side_validation && search_key.nil?
        fail ArgumentError, "Missing the required parameter 'search_key' when calling CustomFieldsApi.search_custom_fields"
      end
      if @api_client.config.client_side_validation && search_key !~ Regexp.new(/.*/)
        fail ArgumentError, "invalid value for 'search_key' when calling CustomFieldsApi.search_custom_fields, must conform to the pattern /.*/."
      end

      # resource path
      local_var_path = "/1.0/kb/customFields/search/{searchKey}".sub('{' + 'searchKey' + '}', search_key.to_s)

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
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
        @api_client.config.logger.debug "API called: CustomFieldsApi#search_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
