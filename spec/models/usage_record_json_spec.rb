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

# Unit tests for SwaggerClient::UsageRecordJson
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsageRecordJson' do
  before do
    # run before each test
    @instance = SwaggerClient::UsageRecordJson.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsageRecordJson' do
    it 'should create an instance of UsageRecordJson' do
      expect(@instance).to be_instance_of(SwaggerClient::UsageRecordJson)
    end
  end
  describe 'test attribute "record_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "amount"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

