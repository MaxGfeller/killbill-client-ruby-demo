# SwaggerClient::PaymentGatewaysApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**build_combo_form_descriptor**](PaymentGatewaysApi.md#build_combo_form_descriptor) | **POST** /1.0/kb/paymentGateways/hosted/form | Combo API to generate form data to redirect the customer to the gateway
[**build_form_descriptor**](PaymentGatewaysApi.md#build_form_descriptor) | **POST** /1.0/kb/paymentGateways/hosted/form/{accountId} | Generate form data to redirect the customer to the gateway
[**process_notification**](PaymentGatewaysApi.md#process_notification) | **POST** /1.0/kb/paymentGateways/notification/{pluginName} | Process a gateway notification


# **build_combo_form_descriptor**
> HostedPaymentPageFormDescriptorJson build_combo_form_descriptor(opts)

Combo API to generate form data to redirect the customer to the gateway



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentGatewaysApi.new

opts = { 
  body: SwaggerClient::ComboHostedPaymentPageJson.new, # ComboHostedPaymentPageJson | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Combo API to generate form data to redirect the customer to the gateway
  result = api_instance.build_combo_form_descriptor(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentGatewaysApi->build_combo_form_descriptor: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ComboHostedPaymentPageJson**](ComboHostedPaymentPageJson.md)|  | [optional] 
 **control_plugin_name** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

[**HostedPaymentPageFormDescriptorJson**](HostedPaymentPageFormDescriptorJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **build_form_descriptor**
> HostedPaymentPageFormDescriptorJson build_form_descriptor(account_id, opts)

Generate form data to redirect the customer to the gateway



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentGatewaysApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: SwaggerClient::HostedPaymentPageFieldsJson.new, # HostedPaymentPageFieldsJson | 
  payment_method_id: "payment_method_id_example", # String | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Generate form data to redirect the customer to the gateway
  result = api_instance.build_form_descriptor(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentGatewaysApi->build_form_descriptor: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**HostedPaymentPageFieldsJson**](HostedPaymentPageFieldsJson.md)|  | [optional] 
 **payment_method_id** | **String**|  | [optional] 
 **control_plugin_name** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

[**HostedPaymentPageFormDescriptorJson**](HostedPaymentPageFormDescriptorJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **process_notification**
> process_notification(plugin_name, opts)

Process a gateway notification

The response is built by the appropriate plugin

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PaymentGatewaysApi.new

plugin_name = "plugin_name_example" # String | 

opts = { 
  body: "body_example", # String | 
  control_plugin_name: ["control_plugin_name_example"], # Array<String> | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Process a gateway notification
  api_instance.process_notification(plugin_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PaymentGatewaysApi->process_notification: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin_name** | **String**|  | 
 **body** | **String**|  | [optional] 
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

 - **Content-Type**: */*
 - **Accept**: application/json



