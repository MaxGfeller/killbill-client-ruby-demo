# SwaggerClient::InvoicePaymentsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_chargeback**](InvoicePaymentsApi.md#create_chargeback) | **POST** /1.0/kb/invoicePayments/{paymentId}/chargebacks | Record a chargeback
[**create_chargeback_reversal**](InvoicePaymentsApi.md#create_chargeback_reversal) | **POST** /1.0/kb/invoicePayments/{paymentId}/chargebackReversals | Record a chargebackReversal
[**create_custom_fields**](InvoicePaymentsApi.md#create_custom_fields) | **POST** /1.0/kb/invoicePayments/{paymentId}/customFields | Add custom fields to payment
[**create_refund_with_adjustments**](InvoicePaymentsApi.md#create_refund_with_adjustments) | **POST** /1.0/kb/invoicePayments/{paymentId}/refunds | Refund a payment, and adjust the invoice if needed
[**create_tags**](InvoicePaymentsApi.md#create_tags) | **POST** /1.0/kb/invoicePayments/{paymentId}/tags | Add tags to payment
[**delete_custom_fields**](InvoicePaymentsApi.md#delete_custom_fields) | **DELETE** /1.0/kb/invoicePayments/{paymentId}/customFields | Remove custom fields from payment
[**delete_tags**](InvoicePaymentsApi.md#delete_tags) | **DELETE** /1.0/kb/invoicePayments/{paymentId}/tags | Remove tags from payment
[**get_custom_fields**](InvoicePaymentsApi.md#get_custom_fields) | **GET** /1.0/kb/invoicePayments/{paymentId}/customFields | Retrieve payment custom fields
[**get_invoice_payment**](InvoicePaymentsApi.md#get_invoice_payment) | **GET** /1.0/kb/invoicePayments/{paymentId} | Retrieve a payment by id
[**get_tags**](InvoicePaymentsApi.md#get_tags) | **GET** /1.0/kb/invoicePayments/{paymentId}/tags | Retrieve payment tags


# **create_chargeback**
> create_chargeback(payment_id, opts)

Record a chargeback



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  body: SwaggerClient::InvoicePaymentTransactionJson.new, # InvoicePaymentTransactionJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Record a chargeback
  api_instance.create_chargeback(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->create_chargeback: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **body** | [**InvoicePaymentTransactionJson**](InvoicePaymentTransactionJson.md)|  | [optional] 
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



# **create_chargeback_reversal**
> create_chargeback_reversal(payment_id, opts)

Record a chargebackReversal



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  body: SwaggerClient::InvoicePaymentTransactionJson.new, # InvoicePaymentTransactionJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Record a chargebackReversal
  api_instance.create_chargeback_reversal(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->create_chargeback_reversal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **body** | [**InvoicePaymentTransactionJson**](InvoicePaymentTransactionJson.md)|  | [optional] 
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

api_instance = SwaggerClient::InvoicePaymentsApi.new

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
  puts "Exception when calling InvoicePaymentsApi->create_custom_fields: #{e}"
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



# **create_refund_with_adjustments**
> create_refund_with_adjustments(payment_id, opts)

Refund a payment, and adjust the invoice if needed



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  body: SwaggerClient::InvoicePaymentTransactionJson.new, # InvoicePaymentTransactionJson | 
  external_payment: false, # BOOLEAN | 
  payment_method_id: "payment_method_id_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Refund a payment, and adjust the invoice if needed
  api_instance.create_refund_with_adjustments(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->create_refund_with_adjustments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **body** | [**InvoicePaymentTransactionJson**](InvoicePaymentTransactionJson.md)|  | [optional] 
 **external_payment** | **BOOLEAN**|  | [optional] [default to false]
 **payment_method_id** | **String**|  | [optional] 
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
> create_tags(payment_id, opts)

Add tags to payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add tags to payment
  api_instance.create_tags(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->create_tags: #{e}"
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

Remove custom fields from payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  custom_field_list: "custom_field_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove custom fields from payment
  api_instance.delete_custom_fields(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->delete_custom_fields: #{e}"
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

Remove tags from payment



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove tags from payment
  api_instance.delete_tags(payment_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->delete_tags: #{e}"
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

api_instance = SwaggerClient::InvoicePaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve payment custom fields
  result = api_instance.get_custom_fields(payment_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->get_custom_fields: #{e}"
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



# **get_invoice_payment**
> InvoicePaymentJson get_invoice_payment(payment_id, opts)

Retrieve a payment by id



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  with_plugin_info: false, # BOOLEAN | 
  with_attempts: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE" # String | 
}

begin
  #Retrieve a payment by id
  result = api_instance.get_invoice_payment(payment_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->get_invoice_payment: #{e}"
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

[**InvoicePaymentJson**](InvoicePaymentJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tags**
> Array&lt;TagJson&gt; get_tags(payment_id, opts)

Retrieve payment tags



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicePaymentsApi.new

payment_id = "payment_id_example" # String | 

opts = { 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE", # String | 
  included_deleted: false # BOOLEAN | 
}

begin
  #Retrieve payment tags
  result = api_instance.get_tags(payment_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->get_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]
 **included_deleted** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;TagJson&gt;**](TagJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



