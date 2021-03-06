=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ExportApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ExportApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ExportApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExportApi' do
    it 'should create an instance of ExportApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ExportApi)
    end
  end

  # unit tests for export_data_for_account
  # Export account data
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [String]
  describe 'export_data_for_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
