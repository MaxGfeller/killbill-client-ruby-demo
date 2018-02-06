# SwaggerClient::TagDefinitionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tag_definition**](TagDefinitionsApi.md#create_tag_definition) | **POST** /1.0/kb/tagDefinitions | Create a tag definition
[**delete_tag_definition**](TagDefinitionsApi.md#delete_tag_definition) | **DELETE** /1.0/kb/tagDefinitions/{tagDefinitionId} | Delete a tag definition
[**get_tag_definition**](TagDefinitionsApi.md#get_tag_definition) | **GET** /1.0/kb/tagDefinitions/{tagDefinitionId} | Retrieve a tag definition
[**get_tag_definitions**](TagDefinitionsApi.md#get_tag_definitions) | **GET** /1.0/kb/tagDefinitions | List tag definitions


# **create_tag_definition**
> create_tag_definition(opts)

Create a tag definition



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TagDefinitionsApi.new

opts = { 
  body: SwaggerClient::TagDefinitionJson.new, # TagDefinitionJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Create a tag definition
  api_instance.create_tag_definition(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagDefinitionsApi->create_tag_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TagDefinitionJson**](TagDefinitionJson.md)|  | [optional] 
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



# **delete_tag_definition**
> delete_tag_definition(tag_definition_id, opts)

Delete a tag definition



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TagDefinitionsApi.new

tag_definition_id = "tag_definition_id_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Delete a tag definition
  api_instance.delete_tag_definition(tag_definition_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagDefinitionsApi->delete_tag_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_definition_id** | **String**|  | 
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



# **get_tag_definition**
> TagDefinitionJson get_tag_definition(tag_definition_id, opts)

Retrieve a tag definition



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TagDefinitionsApi.new

tag_definition_id = "tag_definition_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve a tag definition
  result = api_instance.get_tag_definition(tag_definition_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagDefinitionsApi->get_tag_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_definition_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**TagDefinitionJson**](TagDefinitionJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tag_definitions**
> Array&lt;TagDefinitionJson&gt; get_tag_definitions(opts)

List tag definitions



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TagDefinitionsApi.new

opts = { 
  audit: "NONE" # String | 
}

begin
  #List tag definitions
  result = api_instance.get_tag_definitions(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagDefinitionsApi->get_tag_definitions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;TagDefinitionJson&gt;**](TagDefinitionJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



