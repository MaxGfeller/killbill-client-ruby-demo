=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::CustomFieldJson
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomFieldJson' do
  before do
    # run before each test
    @instance = SwaggerClient::CustomFieldJson.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomFieldJson' do
    it 'should create an instance of CustomFieldJson' do
      expect(@instance).to be_instance_of(SwaggerClient::CustomFieldJson)
    end
  end
  describe 'test attribute "custom_field_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "object_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "object_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACCOUNT", "ACCOUNT_EMAIL", "BLOCKING_STATES", "BUNDLE", "CUSTOM_FIELD", "INVOICE", "PAYMENT", "TRANSACTION", "INVOICE_ITEM", "INVOICE_PAYMENT", "SUBSCRIPTION", "SUBSCRIPTION_EVENT", "SERVICE_BROADCAST", "PAYMENT_ATTEMPT", "PAYMENT_METHOD", "REFUND", "TAG", "TAG_DEFINITION", "TENANT", "TENANT_KVS"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.object_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "audit_logs"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

