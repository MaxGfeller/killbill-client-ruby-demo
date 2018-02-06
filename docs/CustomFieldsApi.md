# SwaggerClient::CustomFieldsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_custom_fields**](CustomFieldsApi.md#get_custom_fields) | **GET** /1.0/kb/customFields/pagination | List custom fields
[**search_custom_fields**](CustomFieldsApi.md#search_custom_fields) | **GET** /1.0/kb/customFields/search/{searchKey} | Search custom fields


# **get_custom_fields**
> Array&lt;CustomFieldJson&gt; get_custom_fields(opts)

List custom fields



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CustomFieldsApi.new

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  audit: "NONE" # String | 
}

begin
  #List custom fields
  result = api_instance.get_custom_fields(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomFieldsApi->get_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;CustomFieldJson&gt;**](CustomFieldJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_custom_fields**
> Array&lt;CustomFieldJson&gt; search_custom_fields(search_key, opts)

Search custom fields



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CustomFieldsApi.new

search_key = "search_key_example" # String | 

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  audit: "NONE" # String | 
}

begin
  #Search custom fields
  result = api_instance.search_custom_fields(search_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomFieldsApi->search_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_key** | **String**|  | 
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;CustomFieldJson&gt;**](CustomFieldJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



