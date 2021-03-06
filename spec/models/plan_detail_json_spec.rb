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

# Unit tests for SwaggerClient::PlanDetailJson
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PlanDetailJson' do
  before do
    # run before each test
    @instance = SwaggerClient::PlanDetailJson.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlanDetailJson' do
    it 'should create an instance of PlanDetailJson' do
      expect(@instance).to be_instance_of(SwaggerClient::PlanDetailJson)
    end
  end
  describe 'test attribute "product"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "plan"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "price_list"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "final_phase_billing_period"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["DAILY", "WEEKLY", "BIWEEKLY", "THIRTY_DAYS", "MONTHLY", "QUARTERLY", "BIANNUAL", "ANNUAL", "BIENNIAL", "NO_BILLING_PERIOD"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.final_phase_billing_period = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "final_phase_recurring_price"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

