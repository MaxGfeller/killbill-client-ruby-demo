# SwaggerClient::UsagesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_usage**](UsagesApi.md#get_all_usage) | **GET** /1.0/kb/usages/{subscriptionId} | Retrieve usage for a subscription
[**get_usage**](UsagesApi.md#get_usage) | **GET** /1.0/kb/usages/{subscriptionId}/{unitType} | Retrieve usage for a subscription and unit type
[**record_usage**](UsagesApi.md#record_usage) | **POST** /1.0/kb/usages | Record usage for a subscription


# **get_all_usage**
> RolledUpUsageJson get_all_usage(subscription_id, opts)

Retrieve usage for a subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsagesApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  start_date: "start_date_example", # String | 
  end_date: "end_date_example" # String | 
}

begin
  #Retrieve usage for a subscription
  result = api_instance.get_all_usage(subscription_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsagesApi->get_all_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **start_date** | **String**|  | [optional] 
 **end_date** | **String**|  | [optional] 

### Return type

[**RolledUpUsageJson**](RolledUpUsageJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_usage**
> RolledUpUsageJson get_usage(subscription_id, unit_type, opts)

Retrieve usage for a subscription and unit type



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsagesApi.new

subscription_id = "subscription_id_example" # String | 

unit_type = "unit_type_example" # String | 

opts = { 
  start_date: "start_date_example", # String | 
  end_date: "end_date_example" # String | 
}

begin
  #Retrieve usage for a subscription and unit type
  result = api_instance.get_usage(subscription_id, unit_type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsagesApi->get_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **unit_type** | **String**|  | 
 **start_date** | **String**|  | [optional] 
 **end_date** | **String**|  | [optional] 

### Return type

[**RolledUpUsageJson**](RolledUpUsageJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **record_usage**
> record_usage(opts)

Record usage for a subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UsagesApi.new

opts = { 
  body: SwaggerClient::SubscriptionUsageRecordJson.new, # SubscriptionUsageRecordJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Record usage for a subscription
  api_instance.record_usage(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsagesApi->record_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubscriptionUsageRecordJson**](SubscriptionUsageRecordJson.md)|  | [optional] 
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



