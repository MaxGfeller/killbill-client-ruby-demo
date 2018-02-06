# SwaggerClient::PaymentTransactionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_custom_fields**](PaymentTransactionsApi.md#create_custom_fields) | **POST** /1.0/kb/paymentTransactions/{transactionId}/customFields | Add custom fields to payment transaction
[**create_tags**](PaymentTransactionsApi.md#create_tags) | **POST** /1.0/kb/paymentTransactions/{transactionId}/tags | Add tags to payment transaction
[**delete_custom_fields**](PaymentTransactionsApi.md#delete_custom_fields) | **DELETE** /1.0/kb/paymentTransactions/{transactionId}/customFields | Remove custom fields from payment transaction
[**delete_tags**](PaymentTransactionsApi.md#delete_tags) | **DELETE** /1.0/kb/paymentTransactions/{transactionId}/tags | Remove tags from payment transaction
[**get_custom_fields**](PaymentTransactionsApi.md#get_custom_fields) | **GET** /1.0/kb/paymentTransactions/{transactionId}/customFields | Retrieve payment transaction custom fields
[**get_payment_by_transaction_id**](PaymentTransactionsApi.md#get_payment_by_transaction_id) | **GET** /1.0/kb/paymentTransactions/{transactionId} | Retrieve a payment by transaction id
[**get_tags**](PaymentTransactionsApi.md#get_tags) | **GET** /1.0/kb/paymentTransactions/{transactionId}/tags | Retrieve payment transaction tags
[**notify_state_changed**](PaymentTransactionsApi.md#notify_state_changed) | **POST** /1.0/kb/paymentTransactions/{transactionId} | Mark a pending payment transaction as succeeded or failed


# **create_custom_fields**
> create_custom_fields(transaction_id, opts)

Add custom fields to payment transaction



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentTransactionsApi.new

transaction_id = "transaction_id_example" # String | 

opts = { 
  body: [SwaggerClient::CustomFieldJson.new], # Array<CustomFieldJson> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add custom fields to payment transaction
  api_instance.create_custom_fields(transaction_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentTransactionsApi->create_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**|  | 
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



# **create_tags**
> create_tags(transaction_id, opts)

Add tags to payment transaction



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentTransactionsApi.new

transaction_id = "transaction_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add tags to payment transaction
  api_instance.create_tags(transaction_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentTransactionsApi->create_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**|  | 
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



# **delete_custom_fields**
> delete_custom_fields(transaction_id, opts)

Remove custom fields from payment transaction



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentTransactionsApi.new

transaction_id = "transaction_id_example" # String | 

opts = { 
  custom_field_list: "custom_field_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove custom fields from payment transaction
  api_instance.delete_custom_fields(transaction_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentTransactionsApi->delete_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**|  | 
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
> delete_tags(transaction_id, opts)

Remove tags from payment transaction



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentTransactionsApi.new

transaction_id = "transaction_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove tags from payment transaction
  api_instance.delete_tags(transaction_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentTransactionsApi->delete_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**|  | 
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



# **get_custom_fields**
> Array&lt;CustomFieldJson&gt; get_custom_fields(transaction_id, opts)

Retrieve payment transaction custom fields



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentTransactionsApi.new

transaction_id = "transaction_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve payment transaction custom fields
  result = api_instance.get_custom_fields(transaction_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentTransactionsApi->get_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;CustomFieldJson&gt;**](CustomFieldJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment_by_transaction_id**
> PaymentJson get_payment_by_transaction_id(transaction_id, opts)

Retrieve a payment by transaction id



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentTransactionsApi.new

transaction_id = "transaction_id_example" # String | 

opts = { 
  with_plugin_info: false, # BOOLEAN | 
  with_attempts: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE" # String | 
}

begin
  #Retrieve a payment by transaction id
  result = api_instance.get_payment_by_transaction_id(transaction_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentTransactionsApi->get_payment_by_transaction_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**|  | 
 **with_plugin_info** | **BOOLEAN**|  | [optional] [default to false]
 **with_attempts** | **BOOLEAN**|  | [optional] [default to false]
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**PaymentJson**](PaymentJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tags**
> Array&lt;TagJson&gt; get_tags(transaction_id, opts)

Retrieve payment transaction tags



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentTransactionsApi.new

transaction_id = "transaction_id_example" # String | 

opts = { 
  audit: "NONE", # String | 
  included_deleted: false # BOOLEAN | 
}

begin
  #Retrieve payment transaction tags
  result = api_instance.get_tags(transaction_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentTransactionsApi->get_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]
 **included_deleted** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;TagJson&gt;**](TagJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **notify_state_changed**
> notify_state_changed(transaction_id, opts)

Mark a pending payment transaction as succeeded or failed



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentTransactionsApi.new

transaction_id = "transaction_id_example" # String | 

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Mark a pending payment transaction as succeeded or failed
  api_instance.notify_state_changed(transaction_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentTransactionsApi->notify_state_changed: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_id** | **String**|  | 
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



