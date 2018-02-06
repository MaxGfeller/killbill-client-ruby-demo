# SwaggerClient::AccountsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_account_blocking_state**](AccountsApi.md#add_account_blocking_state) | **PUT** /1.0/kb/accounts/{accountId}/block | Block an account
[**add_email**](AccountsApi.md#add_email) | **POST** /1.0/kb/accounts/{accountId}/emails | Add account email
[**close_account**](AccountsApi.md#close_account) | **DELETE** /1.0/kb/accounts/{accountId} | Close account
[**create_account**](AccountsApi.md#create_account) | **POST** /1.0/kb/accounts | Create account
[**create_custom_fields**](AccountsApi.md#create_custom_fields) | **POST** /1.0/kb/accounts/{accountId}/customFields | Add custom fields to account
[**create_payment_method**](AccountsApi.md#create_payment_method) | **POST** /1.0/kb/accounts/{accountId}/paymentMethods | Add a payment method
[**create_tags**](AccountsApi.md#create_tags) | **POST** /1.0/kb/accounts/{accountId}/tags | Add tags to account
[**delete_custom_fields**](AccountsApi.md#delete_custom_fields) | **DELETE** /1.0/kb/accounts/{accountId}/customFields | Remove custom fields from account
[**delete_tags**](AccountsApi.md#delete_tags) | **DELETE** /1.0/kb/accounts/{accountId}/tags | Remove tags from account
[**get_account**](AccountsApi.md#get_account) | **GET** /1.0/kb/accounts/{accountId} | Retrieve an account by id
[**get_account_bundles**](AccountsApi.md#get_account_bundles) | **GET** /1.0/kb/accounts/{accountId}/bundles | Retrieve bundles for account
[**get_account_by_key**](AccountsApi.md#get_account_by_key) | **GET** /1.0/kb/accounts | Retrieve an account by external key
[**get_account_timeline**](AccountsApi.md#get_account_timeline) | **GET** /1.0/kb/accounts/{accountId}/timeline | Retrieve account timeline
[**get_accounts**](AccountsApi.md#get_accounts) | **GET** /1.0/kb/accounts/pagination | List accounts
[**get_all_tags**](AccountsApi.md#get_all_tags) | **GET** /1.0/kb/accounts/{accountId}/allTags | Retrieve account tags
[**get_blocking_states**](AccountsApi.md#get_blocking_states) | **GET** /1.0/kb/accounts/{accountId}/block | Retrieve blocking states for account
[**get_children_accounts**](AccountsApi.md#get_children_accounts) | **GET** /1.0/kb/accounts/{accountId}/children | List children accounts
[**get_custom_fields**](AccountsApi.md#get_custom_fields) | **GET** /1.0/kb/accounts/{accountId}/customFields | Retrieve account custom fields
[**get_email_notifications_for_account**](AccountsApi.md#get_email_notifications_for_account) | **GET** /1.0/kb/accounts/{accountId}/emailNotifications | Retrieve account email notification
[**get_emails**](AccountsApi.md#get_emails) | **GET** /1.0/kb/accounts/{accountId}/emails | Retrieve an account emails
[**get_invoice_payments**](AccountsApi.md#get_invoice_payments) | **GET** /1.0/kb/accounts/{accountId}/invoicePayments | Retrieve account invoice payments
[**get_invoices**](AccountsApi.md#get_invoices) | **GET** /1.0/kb/accounts/{accountId}/invoices | Retrieve account invoices
[**get_overdue_account**](AccountsApi.md#get_overdue_account) | **GET** /1.0/kb/accounts/{accountId}/overdue | Retrieve overdue state for account
[**get_payment_methods**](AccountsApi.md#get_payment_methods) | **GET** /1.0/kb/accounts/{accountId}/paymentMethods | Retrieve account payment methods
[**get_payments**](AccountsApi.md#get_payments) | **GET** /1.0/kb/accounts/{accountId}/payments | Retrieve account payments
[**get_tags**](AccountsApi.md#get_tags) | **GET** /1.0/kb/accounts/{accountId}/tags | Retrieve account tags
[**pay_all_invoices**](AccountsApi.md#pay_all_invoices) | **POST** /1.0/kb/accounts/{accountId}/invoicePayments | Trigger a payment for all unpaid invoices
[**process_payment**](AccountsApi.md#process_payment) | **POST** /1.0/kb/accounts/{accountId}/payments | Trigger a payment (authorization, purchase or credit)
[**process_payment_by_external_key**](AccountsApi.md#process_payment_by_external_key) | **POST** /1.0/kb/accounts/payments | Trigger a payment using the account external key (authorization, purchase or credit)
[**rebalance_existing_cba_on_account**](AccountsApi.md#rebalance_existing_cba_on_account) | **POST** /1.0/kb/accounts/{accountId}/cbaRebalancing | Rebalance account CBA
[**refresh_payment_methods**](AccountsApi.md#refresh_payment_methods) | **POST** /1.0/kb/accounts/{accountId}/paymentMethods/refresh | Refresh account payment methods
[**remove_email**](AccountsApi.md#remove_email) | **DELETE** /1.0/kb/accounts/{accountId}/emails/{email} | Delete email from account
[**search_accounts**](AccountsApi.md#search_accounts) | **GET** /1.0/kb/accounts/search/{searchKey} | Search accounts
[**set_default_payment_method**](AccountsApi.md#set_default_payment_method) | **PUT** /1.0/kb/accounts/{accountId}/paymentMethods/{paymentMethodId}/setDefault | Set the default payment method
[**set_email_notifications_for_account**](AccountsApi.md#set_email_notifications_for_account) | **PUT** /1.0/kb/accounts/{accountId}/emailNotifications | Set account email notification
[**transfer_child_credit_to_parent**](AccountsApi.md#transfer_child_credit_to_parent) | **POST** /1.0/kb/accounts/{childAccountId}/transferCredit | Move a given child credit to the parent level
[**update_account**](AccountsApi.md#update_account) | **PUT** /1.0/kb/accounts/{accountId} | Update account


# **add_account_blocking_state**
> add_account_blocking_state(account_id, opts)

Block an account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: SwaggerClient::BlockingStateJson.new, # BlockingStateJson | 
  requested_date: "requested_date_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Block an account
  api_instance.add_account_blocking_state(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->add_account_blocking_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**BlockingStateJson**](BlockingStateJson.md)|  | [optional] 
 **requested_date** | **String**|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **add_email**
> add_email(account_id, opts)

Add account email



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: SwaggerClient::AccountEmailJson.new, # AccountEmailJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add account email
  api_instance.add_email(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->add_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**AccountEmailJson**](AccountEmailJson.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **close_account**
> close_account(account_id, opts)

Close account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  cancel_all_subscriptions: false, # BOOLEAN | 
  write_off_unpaid_invoices: false, # BOOLEAN | 
  item_adjust_unpaid_invoices: false, # BOOLEAN | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Close account
  api_instance.close_account(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->close_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **cancel_all_subscriptions** | **BOOLEAN**|  | [optional] [default to false]
 **write_off_unpaid_invoices** | **BOOLEAN**|  | [optional] [default to false]
 **item_adjust_unpaid_invoices** | **BOOLEAN**|  | [optional] [default to false]
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_account**
> create_account(opts)

Create account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

opts = { 
  body: SwaggerClient::AccountJson.new, # AccountJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Create account
  api_instance.create_account(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->create_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AccountJson**](AccountJson.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_custom_fields**
> create_custom_fields(account_id, opts)

Add custom fields to account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: [SwaggerClient::CustomFieldJson.new], # Array<CustomFieldJson> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add custom fields to account
  api_instance.create_custom_fields(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->create_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**Array&lt;CustomFieldJson&gt;**](CustomFieldJson.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_payment_method**
> create_payment_method(account_id, opts)

Add a payment method



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: SwaggerClient::PaymentMethodJson.new, # PaymentMethodJson | 
  is_default: false, # BOOLEAN | 
  pay_all_unpaid_invoices: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add a payment method
  api_instance.create_payment_method(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->create_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**PaymentMethodJson**](PaymentMethodJson.md)|  | [optional] 
 **is_default** | **BOOLEAN**|  | [optional] [default to false]
 **pay_all_unpaid_invoices** | **BOOLEAN**|  | [optional] [default to false]
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_tags**
> create_tags(account_id, opts)

Add tags to account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add tags to account
  api_instance.create_tags(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->create_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **tag_list** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_custom_fields**
> delete_custom_fields(account_id, opts)

Remove custom fields from account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  custom_field_list: "custom_field_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove custom fields from account
  api_instance.delete_custom_fields(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->delete_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **custom_field_list** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_tags**
> delete_tags(account_id, opts)

Remove tags from account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove tags from account
  api_instance.delete_tags(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->delete_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **tag_list** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_account**
> AccountJson get_account(account_id, opts)

Retrieve an account by id



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  account_with_balance: false, # BOOLEAN | 
  account_with_balance_and_cba: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #Retrieve an account by id
  result = api_instance.get_account(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **account_with_balance** | **BOOLEAN**|  | [optional] [default to false]
 **account_with_balance_and_cba** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**AccountJson**](AccountJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_bundles**
> Array&lt;BundleJson&gt; get_account_bundles(account_id, opts)

Retrieve bundles for account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  external_key: "external_key_example", # String | 
  bundles_filter: "bundles_filter_example", # String | 
  audit: "NONE" # String | 
}

begin
  #Retrieve bundles for account
  result = api_instance.get_account_bundles(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account_bundles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **external_key** | **String**|  | [optional] 
 **bundles_filter** | **String**|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;BundleJson&gt;**](BundleJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_by_key**
> AccountJson get_account_by_key(opts)

Retrieve an account by external key



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

opts = { 
  external_key: "external_key_example", # String | 
  account_with_balance: false, # BOOLEAN | 
  account_with_balance_and_cba: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #Retrieve an account by external key
  result = api_instance.get_account_by_key(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account_by_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_key** | **String**|  | [optional] 
 **account_with_balance** | **BOOLEAN**|  | [optional] [default to false]
 **account_with_balance_and_cba** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**AccountJson**](AccountJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_account_timeline**
> AccountTimelineJson get_account_timeline(account_id, opts)

Retrieve account timeline



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  audit: "NONE", # String | 
  parallel: false # BOOLEAN | 
}

begin
  #Retrieve account timeline
  result = api_instance.get_account_timeline(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account_timeline: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]
 **parallel** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**AccountTimelineJson**](AccountTimelineJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_accounts**
> Array&lt;AccountJson&gt; get_accounts(opts)

List accounts



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  account_with_balance: false, # BOOLEAN | 
  account_with_balance_and_cba: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #List accounts
  result = api_instance.get_accounts(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
 **account_with_balance** | **BOOLEAN**|  | [optional] [default to false]
 **account_with_balance_and_cba** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;AccountJson&gt;**](AccountJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_tags**
> Array&lt;TagJson&gt; get_all_tags(account_id, opts)

Retrieve account tags



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  object_type: "object_type_example", # String | 
  audit: "NONE", # String | 
  included_deleted: false # BOOLEAN | 
}

begin
  #Retrieve account tags
  result = api_instance.get_all_tags(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_all_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **object_type** | **String**|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]
 **included_deleted** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;TagJson&gt;**](TagJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_blocking_states**
> Array&lt;BlockingStateJson&gt; get_blocking_states(account_id, opts)

Retrieve blocking states for account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  blocking_state_types: ["blocking_state_types_example"], # Array<String> | 
  blocking_state_svcs: ["blocking_state_svcs_example"], # Array<String> | 
  audit: "NONE" # String | 
}

begin
  #Retrieve blocking states for account
  result = api_instance.get_blocking_states(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_blocking_states: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **blocking_state_types** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **blocking_state_svcs** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;BlockingStateJson&gt;**](BlockingStateJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_children_accounts**
> Array&lt;AccountJson&gt; get_children_accounts(account_id, opts)

List children accounts



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  account_with_balance: false, # BOOLEAN | 
  account_with_balance_and_cba: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #List children accounts
  result = api_instance.get_children_accounts(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_children_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **account_with_balance** | **BOOLEAN**|  | [optional] [default to false]
 **account_with_balance_and_cba** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;AccountJson&gt;**](AccountJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_custom_fields**
> Array&lt;CustomFieldJson&gt; get_custom_fields(account_id, opts)

Retrieve account custom fields



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve account custom fields
  result = api_instance.get_custom_fields(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;CustomFieldJson&gt;**](CustomFieldJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_email_notifications_for_account**
> InvoiceEmailJson get_email_notifications_for_account(account_id)

Retrieve account email notification



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 


begin
  #Retrieve account email notification
  result = api_instance.get_email_notifications_for_account(account_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_email_notifications_for_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 

### Return type

[**InvoiceEmailJson**](InvoiceEmailJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_emails**
> Array&lt;AccountEmailJson&gt; get_emails(account_id)

Retrieve an account emails



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 


begin
  #Retrieve an account emails
  result = api_instance.get_emails(account_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_emails: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 

### Return type

[**Array&lt;AccountEmailJson&gt;**](AccountEmailJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoice_payments**
> Array&lt;InvoicePaymentJson&gt; get_invoice_payments(account_id, opts)

Retrieve account invoice payments



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  audit: "NONE", # String | 
  with_plugin_info: false, # BOOLEAN | 
  with_attempts: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"] # Array<String> | 
}

begin
  #Retrieve account invoice payments
  result = api_instance.get_invoice_payments(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_invoice_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]
 **with_plugin_info** | **BOOLEAN**|  | [optional] [default to false]
 **with_attempts** | **BOOLEAN**|  | [optional] [default to false]
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**Array&lt;InvoicePaymentJson&gt;**](InvoicePaymentJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoices**
> InvoiceJson get_invoices(account_id, opts)

Retrieve account invoices



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  with_items: false, # BOOLEAN | 
  with_migration_invoices: false, # BOOLEAN | 
  unpaid_invoices_only: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #Retrieve account invoices
  result = api_instance.get_invoices(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **with_items** | **BOOLEAN**|  | [optional] [default to false]
 **with_migration_invoices** | **BOOLEAN**|  | [optional] [default to false]
 **unpaid_invoices_only** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_overdue_account**
> OverdueStateJson get_overdue_account(account_id)

Retrieve overdue state for account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 


begin
  #Retrieve overdue state for account
  result = api_instance.get_overdue_account(account_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_overdue_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 

### Return type

[**OverdueStateJson**](OverdueStateJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment_methods**
> Array&lt;PaymentMethodJson&gt; get_payment_methods(account_id, opts)

Retrieve account payment methods



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  with_plugin_info: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE" # String | 
}

begin
  #Retrieve account payment methods
  result = api_instance.get_payment_methods(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **with_plugin_info** | **BOOLEAN**|  | [optional] [default to false]
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;PaymentMethodJson&gt;**](PaymentMethodJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payments**
> Array&lt;PaymentJson&gt; get_payments(account_id, opts)

Retrieve account payments



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  audit: "NONE", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  with_plugin_info: false, # BOOLEAN | 
  with_attempts: false # BOOLEAN | 
}

begin
  #Retrieve account payments
  result = api_instance.get_payments(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **with_plugin_info** | **BOOLEAN**|  | [optional] [default to false]
 **with_attempts** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;PaymentJson&gt;**](PaymentJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tags**
> Array&lt;TagJson&gt; get_tags(account_id, opts)

Retrieve account tags



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  audit: "NONE", # String | 
  included_deleted: false # BOOLEAN | 
}

begin
  #Retrieve account tags
  result = api_instance.get_tags(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->get_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]
 **included_deleted** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;TagJson&gt;**](TagJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **pay_all_invoices**
> pay_all_invoices(account_id, opts)

Trigger a payment for all unpaid invoices



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  external_payment: false, # BOOLEAN | 
  payment_amount: 8.14, # Float | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Trigger a payment for all unpaid invoices
  api_instance.pay_all_invoices(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->pay_all_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **external_payment** | **BOOLEAN**|  | [optional] [default to false]
 **payment_amount** | **Float**|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **process_payment**
> process_payment(account_id, opts)

Trigger a payment (authorization, purchase or credit)



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  payment_method_id: "payment_method_id_example", # String | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Trigger a payment (authorization, purchase or credit)
  api_instance.process_payment(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->process_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
 **payment_method_id** | **String**|  | [optional] 
 **control_plugin_name** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **process_payment_by_external_key**
> process_payment_by_external_key(opts)

Trigger a payment using the account external key (authorization, purchase or credit)



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  external_key: "external_key_example", # String | 
  payment_method_id: "payment_method_id_example", # String | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Trigger a payment using the account external key (authorization, purchase or credit)
  api_instance.process_payment_by_external_key(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->process_payment_by_external_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
 **external_key** | **String**|  | [optional] 
 **payment_method_id** | **String**|  | [optional] 
 **control_plugin_name** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **rebalance_existing_cba_on_account**
> rebalance_existing_cba_on_account(account_id, opts)

Rebalance account CBA



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Rebalance account CBA
  api_instance.rebalance_existing_cba_on_account(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->rebalance_existing_cba_on_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **refresh_payment_methods**
> refresh_payment_methods(account_id, opts)

Refresh account payment methods



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  plugin_name: "plugin_name_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Refresh account payment methods
  api_instance.refresh_payment_methods(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->refresh_payment_methods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **plugin_name** | **String**|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_email**
> remove_email(account_id, email, opts)

Delete email from account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

email = "email_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Delete email from account
  api_instance.remove_email(account_id, email, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->remove_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **email** | **String**|  | 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_accounts**
> Array&lt;AccountJson&gt; search_accounts(search_key, opts)

Search accounts



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

search_key = "search_key_example" # String | 

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  account_with_balance: false, # BOOLEAN | 
  account_with_balance_and_cba: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #Search accounts
  result = api_instance.search_accounts(search_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->search_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_key** | **String**|  | 
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
 **account_with_balance** | **BOOLEAN**|  | [optional] [default to false]
 **account_with_balance_and_cba** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;AccountJson&gt;**](AccountJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_default_payment_method**
> set_default_payment_method(account_id, payment_method_id, opts)

Set the default payment method



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

payment_method_id = "payment_method_id_example" # String | 

opts = { 
  pay_all_unpaid_invoices: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Set the default payment method
  api_instance.set_default_payment_method(account_id, payment_method_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->set_default_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **payment_method_id** | **String**|  | 
 **pay_all_unpaid_invoices** | **BOOLEAN**|  | [optional] [default to false]
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_email_notifications_for_account**
> set_email_notifications_for_account(account_id, opts)

Set account email notification



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: SwaggerClient::InvoiceEmailJson.new, # InvoiceEmailJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Set account email notification
  api_instance.set_email_notifications_for_account(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->set_email_notifications_for_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**InvoiceEmailJson**](InvoiceEmailJson.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **transfer_child_credit_to_parent**
> transfer_child_credit_to_parent(child_account_id, opts)

Move a given child credit to the parent level



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

child_account_id = "child_account_id_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Move a given child credit to the parent level
  api_instance.transfer_child_credit_to_parent(child_account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->transfer_child_credit_to_parent: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_account_id** | **String**|  | 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_account**
> update_account(account_id, opts)

Update account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccountsApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: SwaggerClient::AccountJson.new, # AccountJson | 
  treat_null_as_reset: false, # BOOLEAN | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Update account
  api_instance.update_account(account_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountsApi->update_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**AccountJson**](AccountJson.md)|  | [optional] 
 **treat_null_as_reset** | **BOOLEAN**|  | [optional] [default to false]
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



