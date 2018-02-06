=begin
#Kill Bill

#Kill Bill is an open-source billing and payments platform

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AccountsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AccountsApi)
    end
  end

  # unit tests for add_account_blocking_state
  # Block an account
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BlockingStateJson] :body 
  # @option opts [String] :requested_date 
  # @option opts [Array<String>] :plugin_property 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'add_account_blocking_state test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_email
  # Add account email
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [AccountEmailJson] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'add_email test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for close_account
  # Close account
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :cancel_all_subscriptions 
  # @option opts [BOOLEAN] :write_off_unpaid_invoices 
  # @option opts [BOOLEAN] :item_adjust_unpaid_invoices 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'close_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_account
  # Create account
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [AccountJson] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'create_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_custom_fields
  # Add custom fields to account
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<CustomFieldJson>] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'create_custom_fields test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_payment_method
  # Add a payment method
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [PaymentMethodJson] :body 
  # @option opts [BOOLEAN] :is_default 
  # @option opts [BOOLEAN] :pay_all_unpaid_invoices 
  # @option opts [Array<String>] :plugin_property 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'create_payment_method test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_tags
  # Add tags to account
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tag_list 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'create_tags test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_custom_fields
  # Remove custom fields from account
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :custom_field_list 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'delete_custom_fields test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_tags
  # Remove tags from account
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tag_list 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'delete_tags test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account
  # Retrieve an account by id
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :account_with_balance 
  # @option opts [BOOLEAN] :account_with_balance_and_cba 
  # @option opts [String] :audit 
  # @return [AccountJson]
  describe 'get_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_bundles
  # Retrieve bundles for account
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :external_key 
  # @option opts [String] :bundles_filter 
  # @option opts [String] :audit 
  # @return [Array<BundleJson>]
  describe 'get_account_bundles test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_by_key
  # Retrieve an account by external key
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :external_key 
  # @option opts [BOOLEAN] :account_with_balance 
  # @option opts [BOOLEAN] :account_with_balance_and_cba 
  # @option opts [String] :audit 
  # @return [AccountJson]
  describe 'get_account_by_key test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_timeline
  # Retrieve account timeline
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :audit 
  # @option opts [BOOLEAN] :parallel 
  # @return [AccountTimelineJson]
  describe 'get_account_timeline test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_accounts
  # List accounts
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset 
  # @option opts [Integer] :limit 
  # @option opts [BOOLEAN] :account_with_balance 
  # @option opts [BOOLEAN] :account_with_balance_and_cba 
  # @option opts [String] :audit 
  # @return [Array<AccountJson>]
  describe 'get_accounts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_tags
  # Retrieve account tags
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :object_type 
  # @option opts [String] :audit 
  # @option opts [BOOLEAN] :included_deleted 
  # @return [Array<TagJson>]
  describe 'get_all_tags test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_blocking_states
  # Retrieve blocking states for account
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :blocking_state_types 
  # @option opts [Array<String>] :blocking_state_svcs 
  # @option opts [String] :audit 
  # @return [Array<BlockingStateJson>]
  describe 'get_blocking_states test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_children_accounts
  # List children accounts
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :account_with_balance 
  # @option opts [BOOLEAN] :account_with_balance_and_cba 
  # @option opts [String] :audit 
  # @return [Array<AccountJson>]
  describe 'get_children_accounts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_custom_fields
  # Retrieve account custom fields
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :audit 
  # @return [Array<CustomFieldJson>]
  describe 'get_custom_fields test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email_notifications_for_account
  # Retrieve account email notification
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @return [InvoiceEmailJson]
  describe 'get_email_notifications_for_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_emails
  # Retrieve an account emails
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @return [Array<AccountEmailJson>]
  describe 'get_emails test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_invoice_payments
  # Retrieve account invoice payments
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :audit 
  # @option opts [BOOLEAN] :with_plugin_info 
  # @option opts [BOOLEAN] :with_attempts 
  # @option opts [Array<String>] :plugin_property 
  # @return [Array<InvoicePaymentJson>]
  describe 'get_invoice_payments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_invoices
  # Retrieve account invoices
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :with_items 
  # @option opts [BOOLEAN] :with_migration_invoices 
  # @option opts [BOOLEAN] :unpaid_invoices_only 
  # @option opts [String] :audit 
  # @return [InvoiceJson]
  describe 'get_invoices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_overdue_account
  # Retrieve overdue state for account
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @return [OverdueStateJson]
  describe 'get_overdue_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payment_methods
  # Retrieve account payment methods
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :with_plugin_info 
  # @option opts [Array<String>] :plugin_property 
  # @option opts [String] :audit 
  # @return [Array<PaymentMethodJson>]
  describe 'get_payment_methods test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payments
  # Retrieve account payments
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :audit 
  # @option opts [Array<String>] :plugin_property 
  # @option opts [BOOLEAN] :with_plugin_info 
  # @option opts [BOOLEAN] :with_attempts 
  # @return [Array<PaymentJson>]
  describe 'get_payments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tags
  # Retrieve account tags
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :audit 
  # @option opts [BOOLEAN] :included_deleted 
  # @return [Array<TagJson>]
  describe 'get_tags test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pay_all_invoices
  # Trigger a payment for all unpaid invoices
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :external_payment 
  # @option opts [Float] :payment_amount 
  # @option opts [Array<String>] :plugin_property 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'pay_all_invoices test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for process_payment
  # Trigger a payment (authorization, purchase or credit)
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [PaymentTransactionJson] :body 
  # @option opts [String] :payment_method_id 
  # @option opts [Array<String>] :control_plugin_name 
  # @option opts [Array<String>] :plugin_property 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'process_payment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for process_payment_by_external_key
  # Trigger a payment using the account external key (authorization, purchase or credit)
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [PaymentTransactionJson] :body 
  # @option opts [String] :external_key 
  # @option opts [String] :payment_method_id 
  # @option opts [Array<String>] :control_plugin_name 
  # @option opts [Array<String>] :plugin_property 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'process_payment_by_external_key test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for rebalance_existing_cba_on_account
  # Rebalance account CBA
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'rebalance_existing_cba_on_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for refresh_payment_methods
  # Refresh account payment methods
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :plugin_name 
  # @option opts [Array<String>] :plugin_property 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'refresh_payment_methods test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_email
  # Delete email from account
  # 
  # @param account_id 
  # @param email 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'remove_email test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_accounts
  # Search accounts
  # 
  # @param search_key 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset 
  # @option opts [Integer] :limit 
  # @option opts [BOOLEAN] :account_with_balance 
  # @option opts [BOOLEAN] :account_with_balance_and_cba 
  # @option opts [String] :audit 
  # @return [Array<AccountJson>]
  describe 'search_accounts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_default_payment_method
  # Set the default payment method
  # 
  # @param account_id 
  # @param payment_method_id 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :pay_all_unpaid_invoices 
  # @option opts [Array<String>] :plugin_property 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'set_default_payment_method test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_email_notifications_for_account
  # Set account email notification
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [InvoiceEmailJson] :body 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'set_email_notifications_for_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for transfer_child_credit_to_parent
  # Move a given child credit to the parent level
  # 
  # @param child_account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'transfer_child_credit_to_parent test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_account
  # Update account
  # 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [AccountJson] :body 
  # @option opts [BOOLEAN] :treat_null_as_reset 
  # @option opts [String] :x_killbill_created_by 
  # @option opts [String] :x_killbill_reason 
  # @option opts [String] :x_killbill_comment 
  # @return [nil]
  describe 'update_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
