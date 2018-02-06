# SwaggerClient::PaymentsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_scheduled_payment_transaction_by_external_key**](PaymentsApi.md#cancel_scheduled_payment_transaction_by_external_key) | **DELETE** /1.0/kb/payments/cancelScheduledPaymentTransaction | Cancels a scheduled payment attempt retry
[**cancel_scheduled_payment_transaction_by_id**](PaymentsApi.md#cancel_scheduled_payment_transaction_by_id) | **DELETE** /1.0/kb/payments/{paymentTransactionId}/cancelScheduledPaymentTransaction | Cancels a scheduled payment attempt retry
[**capture_authorization**](PaymentsApi.md#capture_authorization) | **POST** /1.0/kb/payments/{paymentId} | Capture an existing authorization
[**capture_authorization_by_external_key**](PaymentsApi.md#capture_authorization_by_external_key) | **POST** /1.0/kb/payments | Capture an existing authorization
[**chargeback_payment**](PaymentsApi.md#chargeback_payment) | **POST** /1.0/kb/payments/{paymentId}/chargebacks | Record a chargeback
[**chargeback_payment_by_external_key**](PaymentsApi.md#chargeback_payment_by_external_key) | **POST** /1.0/kb/payments/chargebacks | Record a chargeback
[**chargeback_reversal_payment**](PaymentsApi.md#chargeback_reversal_payment) | **POST** /1.0/kb/payments/{paymentId}/chargebackReversals | Record a chargeback reversal
[**chargeback_reversal_payment_by_external_key**](PaymentsApi.md#chargeback_reversal_payment_by_external_key) | **POST** /1.0/kb/payments/chargebackReversals | Record a chargeback reversal
[**complete_transaction**](PaymentsApi.md#complete_transaction) | **PUT** /1.0/kb/payments/{paymentId} | Complete an existing transaction
[**complete_transaction_by_external_key**](PaymentsApi.md#complete_transaction_by_external_key) | **PUT** /1.0/kb/payments | Complete an existing transaction
[**create_combo_payment**](PaymentsApi.md#create_combo_payment) | **POST** /1.0/kb/payments/combo | Combo api to create a new payment transaction on a existing (or not) account 
[**create_custom_fields**](PaymentsApi.md#create_custom_fields) | **POST** /1.0/kb/payments/{paymentId}/customFields | Add custom fields to payment
[**create_tags**](PaymentsApi.md#create_tags) | **POST** /1.0/kb/payments/{paymentId}/tags | Add tags to payment payment
[**delete_custom_fields**](PaymentsApi.md#delete_custom_fields) | **DELETE** /1.0/kb/payments/{paymentId}/customFields | Remove custom fields from payment payment
[**delete_tags**](PaymentsApi.md#delete_tags) | **DELETE** /1.0/kb/payments/{paymentId}/tags | Remove tags from payment payment
[**get_custom_fields**](PaymentsApi.md#get_custom_fields) | **GET** /1.0/kb/payments/{paymentId}/customFields | Retrieve payment custom fields
[**get_payment**](PaymentsApi.md#get_payment) | **GET** /1.0/kb/payments/{paymentId} | Retrieve a payment by id
[**get_payment_by_external_key**](PaymentsApi.md#get_payment_by_external_key) | **GET** /1.0/kb/payments | Retrieve a payment by external key
[**get_payments**](PaymentsApi.md#get_payments) | **GET** /1.0/kb/payments/pagination | Get payments
[**get_tags**](PaymentsApi.md#get_tags) | **GET** /1.0/kb/payments/{paymentId}/tags | Retrieve payment payment tags
[**refund_payment**](PaymentsApi.md#refund_payment) | **POST** /1.0/kb/payments/{paymentId}/refunds | Refund an existing payment
[**refund_payment_by_external_key**](PaymentsApi.md#refund_payment_by_external_key) | **POST** /1.0/kb/payments/refunds | Refund an existing payment
[**search_payments**](PaymentsApi.md#search_payments) | **GET** /1.0/kb/payments/search/{searchKey} | Search payments
[**void_payment**](PaymentsApi.md#void_payment) | **DELETE** /1.0/kb/payments/{paymentId} | Void an existing payment
[**void_payment_by_external_key**](PaymentsApi.md#void_payment_by_external_key) | **DELETE** /1.0/kb/payments | Void an existing payment


# **cancel_scheduled_payment_transaction_by_external_key**
> cancel_scheduled_payment_transaction_by_external_key(opts)

Cancels a scheduled payment attempt retry



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  transaction_external_key: "transaction_external_key_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Cancels a scheduled payment attempt retry
  api_instance.cancel_scheduled_payment_transaction_by_external_key(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->cancel_scheduled_payment_transaction_by_external_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction_external_key** | **String**|  | [optional] 
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



# **cancel_scheduled_payment_transaction_by_id**
> cancel_scheduled_payment_transaction_by_id(payment_transaction_id, opts)

Cancels a scheduled payment attempt retry



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_transaction_id = "payment_transaction_id_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Cancels a scheduled payment attempt retry
  api_instance.cancel_scheduled_payment_transaction_by_id(payment_transaction_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->cancel_scheduled_payment_transaction_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_transaction_id** | **String**|  | 
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



# **capture_authorization**
> capture_authorization(payment_id, opts)

Capture an existing authorization



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Capture an existing authorization
  api_instance.capture_authorization(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->capture_authorization: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **capture_authorization_by_external_key**
> capture_authorization_by_external_key(opts)

Capture an existing authorization



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Capture an existing authorization
  api_instance.capture_authorization_by_external_key(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->capture_authorization_by_external_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **chargeback_payment**
> chargeback_payment(payment_id, opts)

Record a chargeback



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Record a chargeback
  api_instance.chargeback_payment(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->chargeback_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **chargeback_payment_by_external_key**
> chargeback_payment_by_external_key(opts)

Record a chargeback



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Record a chargeback
  api_instance.chargeback_payment_by_external_key(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->chargeback_payment_by_external_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **chargeback_reversal_payment**
> chargeback_reversal_payment(payment_id, opts)

Record a chargeback reversal



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Record a chargeback reversal
  api_instance.chargeback_reversal_payment(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->chargeback_reversal_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **chargeback_reversal_payment_by_external_key**
> chargeback_reversal_payment_by_external_key(opts)

Record a chargeback reversal



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Record a chargeback reversal
  api_instance.chargeback_reversal_payment_by_external_key(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->chargeback_reversal_payment_by_external_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **complete_transaction**
> complete_transaction(payment_id, opts)

Complete an existing transaction



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Complete an existing transaction
  api_instance.complete_transaction(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->complete_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **complete_transaction_by_external_key**
> complete_transaction_by_external_key(opts)

Complete an existing transaction



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Complete an existing transaction
  api_instance.complete_transaction_by_external_key(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->complete_transaction_by_external_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **create_combo_payment**
> create_combo_payment(opts)

Combo api to create a new payment transaction on a existing (or not) account 



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  body: SwaggerClient::ComboPaymentTransactionJson.new, # ComboPaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Combo api to create a new payment transaction on a existing (or not) account 
  api_instance.create_combo_payment(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->create_combo_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ComboPaymentTransactionJson**](ComboPaymentTransactionJson.md)|  | [optional] 
 **control_plugin_name** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
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
> create_custom_fields(payment_id, opts)

Add custom fields to payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  body: [SwaggerClient::CustomFieldJson.new], # Array<CustomFieldJson> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add custom fields to payment
  api_instance.create_custom_fields(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->create_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
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
> create_tags(payment_id, opts)

Add tags to payment payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add tags to payment payment
  api_instance.create_tags(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->create_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
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
> delete_custom_fields(payment_id, opts)

Remove custom fields from payment payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  custom_field_list: "custom_field_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove custom fields from payment payment
  api_instance.delete_custom_fields(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->delete_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
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
> delete_tags(payment_id, opts)

Remove tags from payment payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove tags from payment payment
  api_instance.delete_tags(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->delete_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
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
> Array&lt;CustomFieldJson&gt; get_custom_fields(payment_id, opts)

Retrieve payment custom fields



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve payment custom fields
  result = api_instance.get_custom_fields(payment_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;CustomFieldJson&gt;**](CustomFieldJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment**
> PaymentJson get_payment(payment_id, opts)

Retrieve a payment by id



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  with_plugin_info: false, # BOOLEAN | 
  with_attempts: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE" # String | 
}

begin
  #Retrieve a payment by id
  result = api_instance.get_payment(payment_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
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



# **get_payment_by_external_key**
> PaymentJson get_payment_by_external_key(opts)

Retrieve a payment by external key



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  with_plugin_info: false, # BOOLEAN | 
  with_attempts: false, # BOOLEAN | 
  external_key: "external_key_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE" # String | 
}

begin
  #Retrieve a payment by external key
  result = api_instance.get_payment_by_external_key(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payment_by_external_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with_plugin_info** | **BOOLEAN**|  | [optional] [default to false]
 **with_attempts** | **BOOLEAN**|  | [optional] [default to false]
 **external_key** | **String**|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**PaymentJson**](PaymentJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payments**
> Array&lt;PaymentJson&gt; get_payments(opts)

Get payments



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  plugin_name: "plugin_name_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE", # String | 
  with_plugin_info: false, # BOOLEAN | 
  with_attempts: false # BOOLEAN | 
}

begin
  #Get payments
  result = api_instance.get_payments(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
 **plugin_name** | **String**|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]
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
> Array&lt;TagJson&gt; get_tags(payment_id, opts)

Retrieve payment payment tags



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  audit: "NONE", # String | 
  included_deleted: false # BOOLEAN | 
}

begin
  #Retrieve payment payment tags
  result = api_instance.get_tags(payment_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->get_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]
 **included_deleted** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;TagJson&gt;**](TagJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **refund_payment**
> refund_payment(payment_id, opts)

Refund an existing payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Refund an existing payment
  api_instance.refund_payment(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->refund_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **refund_payment_by_external_key**
> refund_payment_by_external_key(opts)

Refund an existing payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Refund an existing payment
  api_instance.refund_payment_by_external_key(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->refund_payment_by_external_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **search_payments**
> Array&lt;PaymentJson&gt; search_payments(search_key, opts)

Search payments



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

search_key = "search_key_example" # String | 

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  plugin_name: "plugin_name_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE", # String | 
  with_plugin_info: false, # BOOLEAN | 
  with_attempts: false # BOOLEAN | 
}

begin
  #Search payments
  result = api_instance.search_payments(search_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->search_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_key** | **String**|  | 
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
 **plugin_name** | **String**|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]
 **with_plugin_info** | **BOOLEAN**|  | [optional] [default to false]
 **with_attempts** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;PaymentJson&gt;**](PaymentJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **void_payment**
> void_payment(payment_id, opts)

Void an existing payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Void an existing payment
  api_instance.void_payment(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->void_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



# **void_payment_by_external_key**
> void_payment_by_external_key(opts)

Void an existing payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentsApi.new

opts = { 
  body: SwaggerClient::PaymentTransactionJson.new, # PaymentTransactionJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Void an existing payment
  api_instance.void_payment_by_external_key(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentsApi->void_payment_by_external_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PaymentTransactionJson**](PaymentTransactionJson.md)|  | [optional] 
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



