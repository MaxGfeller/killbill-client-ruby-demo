=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::TagsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TagsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::TagsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagsApi' do
    it 'should create an instance of TagsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::TagsApi)
    end
  end

  # unit tests for get_tags
  # List tags
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset 
  # @option opts [Integer] :limit 
  # @option opts [String] :audit 
  # @return [Array<TagJson>]
  describe 'get_tags test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_tags
  # Search tags
  # 
  # @param search_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset 
  # @option opts [Integer] :limit 
  # @option opts [String] :audit 
  # @return [Array<TagJson>]
  describe 'search_tags test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
