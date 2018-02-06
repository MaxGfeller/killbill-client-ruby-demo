# SwaggerClient::BundlesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_bundle_blocking_state**](BundlesApi.md#add_bundle_blocking_state) | **PUT** /1.0/kb/bundles/{bundleId}/block | Block a bundle
[**create_custom_fields**](BundlesApi.md#create_custom_fields) | **POST** /1.0/kb/bundles/{bundleId}/customFields | Add custom fields to bundle
[**create_tags**](BundlesApi.md#create_tags) | **POST** /1.0/kb/bundles/{bundleId}/tags | Add tags to bundle
[**delete_custom_fields**](BundlesApi.md#delete_custom_fields) | **DELETE** /1.0/kb/bundles/{bundleId}/customFields | Remove custom fields from bundle
[**delete_tags**](BundlesApi.md#delete_tags) | **DELETE** /1.0/kb/bundles/{bundleId}/tags | Remove tags from bundle
[**get_bundle**](BundlesApi.md#get_bundle) | **GET** /1.0/kb/bundles/{bundleId} | Retrieve a bundle by id
[**get_bundle_by_key**](BundlesApi.md#get_bundle_by_key) | **GET** /1.0/kb/bundles | Retrieve a bundle by external key
[**get_bundles**](BundlesApi.md#get_bundles) | **GET** /1.0/kb/bundles/pagination | List bundles
[**get_custom_fields**](BundlesApi.md#get_custom_fields) | **GET** /1.0/kb/bundles/{bundleId}/customFields | Retrieve bundle custom fields
[**get_tags**](BundlesApi.md#get_tags) | **GET** /1.0/kb/bundles/{bundleId}/tags | Retrieve bundle tags
[**pause_bundle**](BundlesApi.md#pause_bundle) | **PUT** /1.0/kb/bundles/{bundleId}/pause | Pause a bundle
[**resume_bundle**](BundlesApi.md#resume_bundle) | **PUT** /1.0/kb/bundles/{bundleId}/resume | Resume a bundle
[**search_bundles**](BundlesApi.md#search_bundles) | **GET** /1.0/kb/bundles/search/{searchKey} | Search bundles
[**transfer_bundle**](BundlesApi.md#transfer_bundle) | **PUT** /1.0/kb/bundles/{bundleId} | Transfer a bundle to another account


# **add_bundle_blocking_state**
> add_bundle_blocking_state(bundle_id, opts)

Block a bundle



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  body: SwaggerClient::BlockingStateJson.new, # BlockingStateJson | 
  requested_date: "requested_date_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Block a bundle
  api_instance.add_bundle_blocking_state(bundle_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->add_bundle_blocking_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
 **body** | [**BlockingStateJson**](BlockingStateJson.md)|  | [optional] 
 **requested_date** | **String**|  | [optional] 
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
 - **Accept**: Not defined



# **create_custom_fields**
> create_custom_fields(bundle_id, opts)

Add custom fields to bundle



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  body: [SwaggerClient::CustomFieldJson.new], # Array<CustomFieldJson> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add custom fields to bundle
  api_instance.create_custom_fields(bundle_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->create_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
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
> create_tags(bundle_id, opts)

Add tags to bundle



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add tags to bundle
  api_instance.create_tags(bundle_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->create_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
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
> delete_custom_fields(bundle_id, opts)

Remove custom fields from bundle



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  custom_field_list: "custom_field_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove custom fields from bundle
  api_instance.delete_custom_fields(bundle_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->delete_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
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
> delete_tags(bundle_id, opts)

Remove tags from bundle



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove tags from bundle
  api_instance.delete_tags(bundle_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->delete_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
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



# **get_bundle**
> BundleJson get_bundle(bundle_id, opts)

Retrieve a bundle by id



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve a bundle by id
  result = api_instance.get_bundle(bundle_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->get_bundle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**BundleJson**](BundleJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bundle_by_key**
> BundleJson get_bundle_by_key(opts)

Retrieve a bundle by external key



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

opts = { 
  external_key: "external_key_example", # String | 
  included_deleted: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #Retrieve a bundle by external key
  result = api_instance.get_bundle_by_key(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->get_bundle_by_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_key** | **String**|  | [optional] 
 **included_deleted** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**BundleJson**](BundleJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bundles**
> Array&lt;BundleJson&gt; get_bundles(opts)

List bundles



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  audit: "NONE" # String | 
}

begin
  #List bundles
  result = api_instance.get_bundles(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->get_bundles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;BundleJson&gt;**](BundleJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_custom_fields**
> Array&lt;CustomFieldJson&gt; get_custom_fields(bundle_id, opts)

Retrieve bundle custom fields



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve bundle custom fields
  result = api_instance.get_custom_fields(bundle_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->get_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;CustomFieldJson&gt;**](CustomFieldJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tags**
> Array&lt;TagJson&gt; get_tags(bundle_id, opts)

Retrieve bundle tags



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  audit: "NONE", # String | 
  included_deleted: false # BOOLEAN | 
}

begin
  #Retrieve bundle tags
  result = api_instance.get_tags(bundle_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->get_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]
 **included_deleted** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;TagJson&gt;**](TagJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **pause_bundle**
> pause_bundle(bundle_id, opts)

Pause a bundle



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  requested_date: "requested_date_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Pause a bundle
  api_instance.pause_bundle(bundle_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->pause_bundle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
 **requested_date** | **String**|  | [optional] 
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



# **resume_bundle**
> resume_bundle(bundle_id, opts)

Resume a bundle



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  requested_date: "requested_date_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Resume a bundle
  api_instance.resume_bundle(bundle_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->resume_bundle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
 **requested_date** | **String**|  | [optional] 
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



# **search_bundles**
> Array&lt;BundleJson&gt; search_bundles(search_key, opts)

Search bundles



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

search_key = "search_key_example" # String | 

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  audit: "NONE" # String | 
}

begin
  #Search bundles
  result = api_instance.search_bundles(search_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->search_bundles: #{e}"
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

[**Array&lt;BundleJson&gt;**](BundleJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **transfer_bundle**
> transfer_bundle(bundle_id, opts)

Transfer a bundle to another account



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BundlesApi.new

bundle_id = "bundle_id_example" # String | 

opts = { 
  body: SwaggerClient::BundleJson.new, # BundleJson | 
  requested_date: "requested_date_example", # String | 
  billing_policy: "END_OF_TERM", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Transfer a bundle to another account
  api_instance.transfer_bundle(bundle_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BundlesApi->transfer_bundle: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **String**|  | 
 **body** | [**BundleJson**](BundleJson.md)|  | [optional] 
 **requested_date** | **String**|  | [optional] 
 **billing_policy** | **String**|  | [optional] [default to END_OF_TERM]
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



