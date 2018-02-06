# SwaggerClient::TagsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tags**](TagsApi.md#get_tags) | **GET** /1.0/kb/tags/pagination | List tags
[**search_tags**](TagsApi.md#search_tags) | **GET** /1.0/kb/tags/search/{searchKey} | Search tags


# **get_tags**
> Array&lt;TagJson&gt; get_tags(opts)

List tags



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TagsApi.new

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  audit: "NONE" # String | 
}

begin
  #List tags
  result = api_instance.get_tags(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagsApi->get_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;TagJson&gt;**](TagJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_tags**
> Array&lt;TagJson&gt; search_tags(search_key, opts)

Search tags



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TagsApi.new

search_key = "search_key_example" # String | 

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  audit: "NONE" # String | 
}

begin
  #Search tags
  result = api_instance.search_tags(search_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagsApi->search_tags: #{e}"
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

[**Array&lt;TagJson&gt;**](TagJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



