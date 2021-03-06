=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::TenantsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TenantsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::TenantsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TenantsApi' do
    it 'should create an instance of TenantsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::TenantsApi)
    end
  end

  # unit tests for create_tenant
  # Create a tenant
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [TenantJson] :body 
  # @option opts [BOOLEAN] :use_global_default 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'create_tenant test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_per_tenant_configuration
  # Delete a per tenant configuration (system properties)
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'delete_per_tenant_configuration test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_plugin_configuration
  # Delete a per tenant configuration for a plugin
  # 
  # @param plugin_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'delete_plugin_configuration test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_plugin_payment_state_machine_config
  # Delete a per tenant payment state machine for a plugin
  # 
  # @param plugin_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'delete_plugin_payment_state_machine_config test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_push_notification_callbacks
  # Delete a push notification
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'delete_push_notification_callbacks test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_key_value
  # Delete  a per tenant user key/value
  # 
  # @param key_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'delete_user_key_value test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_plugin_configuration
  # Retrieve a per tenant key value based on key prefix
  # 
  # @param key_prefix 
  # @param [Hash] opts the optional parameters
  # @return [TenantKeyJson]
  describe 'get_all_plugin_configuration test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_per_tenant_configuration
  # Retrieve a per tenant configuration (system properties)
  # 
  # @param [Hash] opts the optional parameters
  # @return [TenantKeyJson]
  describe 'get_per_tenant_configuration test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_plugin_configuration
  # Retrieve a per tenant configuration for a plugin
  # 
  # @param plugin_name 
  # @param [Hash] opts the optional parameters
  # @return [TenantKeyJson]
  describe 'get_plugin_configuration test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_plugin_payment_state_machine_config
  # Retrieve a per tenant payment state machine for a plugin
  # 
  # @param plugin_name 
  # @param [Hash] opts the optional parameters
  # @return [TenantKeyJson]
  describe 'get_plugin_payment_state_machine_config test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_push_notification_callbacks
  # Retrieve a push notification
  # 
  # @param [Hash] opts the optional parameters
  # @return [TenantKeyJson]
  describe 'get_push_notification_callbacks test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tenant
  # Retrieve a tenant by id
  # 
  # @param tenant_id 
  # @param [Hash] opts the optional parameters
  # @return [TenantJson]
  describe 'get_tenant test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tenant_by_api_key
  # Retrieve a tenant by its API key
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key 
  # @return [TenantJson]
  describe 'get_tenant_by_api_key test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_key_value
  # Retrieve a per tenant user key/value
  # 
  # @param key_name 
  # @param [Hash] opts the optional parameters
  # @return [TenantKeyJson]
  describe 'get_user_key_value test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for insert_user_key_value
  # Add a per tenant user key/value
  # 
  # @param key_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'insert_user_key_value test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for register_push_notification_callback
  # Create a push notification
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cb 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'register_push_notification_callback test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_per_tenant_configuration
  # Add a per tenant configuration (system properties)
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'upload_per_tenant_configuration test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_plugin_configuration
  # Add a per tenant configuration for a plugin
  # 
  # @param plugin_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'upload_plugin_configuration test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_plugin_payment_state_machine_config
  # Add a per tenant payment state machine for a plugin
  # 
  # @param plugin_name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'upload_plugin_payment_state_machine_config test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
