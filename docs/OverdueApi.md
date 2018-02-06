# SwaggerClient::OverdueApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_overdue_config_json**](OverdueApi.md#get_overdue_config_json) | **GET** /1.0/kb/overdue | Retrieve the overdue config as JSON
[**upload_overdue_config_xml**](OverdueApi.md#upload_overdue_config_xml) | **POST** /1.0/kb/overdue | Upload the full overdue config as XML


# **get_overdue_config_json**
> OverdueJson get_overdue_config_json

Retrieve the overdue config as JSON



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OverdueApi.new

begin
  #Retrieve the overdue config as JSON
  result = api_instance.get_overdue_config_json
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OverdueApi->get_overdue_config_json: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OverdueJson**](OverdueJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upload_overdue_config_xml**
> upload_overdue_config_xml(opts)

Upload the full overdue config as XML



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OverdueApi.new

opts = { 
  body: "body_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Upload the full overdue config as XML
  api_instance.upload_overdue_config_xml(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OverdueApi->upload_overdue_config_xml: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml
 - **Accept**: Not defined



