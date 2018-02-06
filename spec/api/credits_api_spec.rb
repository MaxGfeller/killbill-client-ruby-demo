=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::CreditsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreditsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::CreditsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreditsApi' do
    it 'should create an instance of CreditsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::CreditsApi)
    end
  end

  # unit tests for create_credit
  # Create a credit
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [CreditJson] :body 
  # @option opts [BOOLEAN] :auto_commit 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'create_credit test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_credit
  # Retrieve a credit by id
  # 
  # @param credit_id 
  # @param [Hash] opts the optional parameters
  # @return [CreditJson]
  describe 'get_credit test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
