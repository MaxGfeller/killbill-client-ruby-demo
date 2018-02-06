# SwaggerClient::PaymentMethodsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_custom_fields**](PaymentMethodsApi.md#create_custom_fields) | **POST** /1.0/kb/paymentMethods/{paymentMethodId}/customFields | Add custom fields to payment method
[**delete_custom_fields**](PaymentMethodsApi.md#delete_custom_fields) | **DELETE** /1.0/kb/paymentMethods/{paymentMethodId}/customFields | Remove custom fields from payment method
[**delete_payment_method**](PaymentMethodsApi.md#delete_payment_method) | **DELETE** /1.0/kb/paymentMethods/{paymentMethodId} | Delete a payment method
[**get_custom_fields**](PaymentMethodsApi.md#get_custom_fields) | **GET** /1.0/kb/paymentMethods/{paymentMethodId}/customFields | Retrieve payment method custom fields
[**get_payment_method**](PaymentMethodsApi.md#get_payment_method) | **GET** /1.0/kb/paymentMethods/{paymentMethodId} | Retrieve a payment method by id
[**get_payment_method_by_key**](PaymentMethodsApi.md#get_payment_method_by_key) | **GET** /1.0/kb/paymentMethods | Retrieve a payment method by external key
[**get_payment_methods**](PaymentMethodsApi.md#get_payment_methods) | **GET** /1.0/kb/paymentMethods/pagination | List payment methods
[**search_payment_methods**](PaymentMethodsApi.md#search_payment_methods) | **GET** /1.0/kb/paymentMethods/search/{searchKey} | Search payment methods


# **create_custom_fields**
> create_custom_fields(payment_method_id, opts)

Add custom fields to payment method



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

payment_method_id = "payment_method_id_example" # String | 

opts = { 
  body: [SwaggerClient::CustomFieldJson.new], # Array<CustomFieldJson> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add custom fields to payment method
  api_instance.create_custom_fields(payment_method_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->create_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_id** | **String**|  | 
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



# **delete_custom_fields**
> delete_custom_fields(payment_method_id, opts)

Remove custom fields from payment method



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

payment_method_id = "payment_method_id_example" # String | 

opts = { 
  custom_field_list: "custom_field_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove custom fields from payment method
  api_instance.delete_custom_fields(payment_method_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->delete_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_id** | **String**|  | 
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



# **delete_payment_method**
> delete_payment_method(payment_method_id, opts)

Delete a payment method



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

payment_method_id = "payment_method_id_example" # String | 

opts = { 
  delete_default_pm_with_auto_pay_off: false, # BOOLEAN | 
  force_default_pm_deletion: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Delete a payment method
  api_instance.delete_payment_method(payment_method_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->delete_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_id** | **String**|  | 
 **delete_default_pm_with_auto_pay_off** | **BOOLEAN**|  | [optional] [default to false]
 **force_default_pm_deletion** | **BOOLEAN**|  | [optional] [default to false]
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



# **get_custom_fields**
> Array&lt;CustomFieldJson&gt; get_custom_fields(payment_method_id, opts)

Retrieve payment method custom fields



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

payment_method_id = "payment_method_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve payment method custom fields
  result = api_instance.get_custom_fields(payment_method_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->get_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;CustomFieldJson&gt;**](CustomFieldJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment_method**
> PaymentMethodJson get_payment_method(payment_method_id, opts)

Retrieve a payment method by id



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

payment_method_id = "payment_method_id_example" # String | 

opts = { 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE", # String | 
  with_plugin_info: false # BOOLEAN | 
}

begin
  #Retrieve a payment method by id
  result = api_instance.get_payment_method(payment_method_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_method_id** | **String**|  | 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]
 **with_plugin_info** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**PaymentMethodJson**](PaymentMethodJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment_method_by_key**
> PaymentMethodJson get_payment_method_by_key(opts)

Retrieve a payment method by external key



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

opts = { 
  external_key: "external_key_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE", # String | 
  with_plugin_info: false # BOOLEAN | 
}

begin
  #Retrieve a payment method by external key
  result = api_instance.get_payment_method_by_key(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->get_payment_method_by_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_key** | **String**|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **audit** | **String**|  | [optional] [default to NONE]
 **with_plugin_info** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**PaymentMethodJson**](PaymentMethodJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payment_methods**
> Array&lt;PaymentMethodJson&gt; get_payment_methods(opts)

List payment methods



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  plugin_name: "plugin_name_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE", # String | 
  with_plugin_info: false # BOOLEAN | 
}

begin
  #List payment methods
  result = api_instance.get_payment_methods(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->get_payment_methods: #{e}"
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

### Return type

[**Array&lt;PaymentMethodJson&gt;**](PaymentMethodJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_payment_methods**
> Array&lt;PaymentMethodJson&gt; search_payment_methods(search_key, opts)

Search payment methods



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentMethodsApi.new

search_key = "search_key_example" # String | 

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  plugin_name: "plugin_name_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  audit: "NONE", # String | 
  with_plugin_info: false # BOOLEAN | 
}

begin
  #Search payment methods
  result = api_instance.search_payment_methods(search_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentMethodsApi->search_payment_methods: #{e}"
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

### Return type

[**Array&lt;PaymentMethodJson&gt;**](PaymentMethodJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



