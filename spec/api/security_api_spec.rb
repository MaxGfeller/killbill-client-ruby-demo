=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::SecurityApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SecurityApi' do
  before do
    # run before each test
    @instance = SwaggerClient::SecurityApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SecurityApi' do
    it 'should create an instance of SecurityApi' do
      expect(@instance).to be_instance_of(SwaggerClient::SecurityApi)
    end
  end

  # unit tests for add_role_definition
  # Add a new role definition)
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [RoleDefinitionJson] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'add_role_definition test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_user_roles
  # Add a new user with roles (to make api requests)
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [UserRolesJson] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'add_user_roles test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_current_user_permissions
  # List user permissions
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'get_current_user_permissions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_current_user_subject
  # Get user information
  # 
  # @param [Hash] opts the optional parameters
  # @return [SubjectJson]
  describe 'get_current_user_subject test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_roles
  # Get roles associated to a user
  # 
  # @param username 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_user_roles test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for invalidate_user
  # Invalidate an existing user
  # 
  # @param username 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'invalidate_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_password
  # Update a user password
  # 
  # @param username 
  # @param [Hash] opts the optional parameters
  # @option opts [UserRolesJson] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'update_user_password test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_roles
  # Update roles associated to a user
  # 
  # @param username 
  # @param [Hash] opts the optional parameters
  # @option opts [UserRolesJson] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'update_user_roles test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
