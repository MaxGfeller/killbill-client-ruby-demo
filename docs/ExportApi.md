# SwaggerClient::ExportApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_data_for_account**](ExportApi.md#export_data_for_account) | **GET** /1.0/kb/export/{accountId} | Export account data


# **export_data_for_account**
> String export_data_for_account(account_id, opts)

Export account data



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ExportApi.new

account_id = "account_id_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Export account data
  result = api_instance.export_data_for_account(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ExportApi->export_data_for_account: #{e}"
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

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain



