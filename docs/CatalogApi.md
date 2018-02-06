# SwaggerClient::CatalogApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_simple_plan**](CatalogApi.md#add_simple_plan) | **POST** /1.0/kb/catalog/simplePlan | Upload the full catalog as XML
[**get_available_addons**](CatalogApi.md#get_available_addons) | **GET** /1.0/kb/catalog/availableAddons | Retrieve available add-ons for a given product
[**get_available_base_plans**](CatalogApi.md#get_available_base_plans) | **GET** /1.0/kb/catalog/availableBasePlans | Retrieve available base plans
[**get_catalog_json**](CatalogApi.md#get_catalog_json) | **GET** /1.0/kb/catalog | Retrieve the catalog as JSON
[**upload_catalog_xml**](CatalogApi.md#upload_catalog_xml) | **POST** /1.0/kb/catalog | Upload the full catalog as XML


# **add_simple_plan**
> add_simple_plan(opts)

Upload the full catalog as XML



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogApi.new

opts = { 
  body: SwaggerClient::SimplePlanJson.new, # SimplePlanJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Upload the full catalog as XML
  api_instance.add_simple_plan(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogApi->add_simple_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SimplePlanJson**](SimplePlanJson.md)|  | [optional] 
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



# **get_available_addons**
> Array&lt;PlanDetailJson&gt; get_available_addons(opts)

Retrieve available add-ons for a given product



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogApi.new

opts = { 
  base_product_name: "base_product_name_example", # String | 
  price_list_name: "price_list_name_example" # String | 
}

begin
  #Retrieve available add-ons for a given product
  result = api_instance.get_available_addons(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogApi->get_available_addons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **base_product_name** | **String**|  | [optional] 
 **price_list_name** | **String**|  | [optional] 

### Return type

[**Array&lt;PlanDetailJson&gt;**](PlanDetailJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_available_base_plans**
> Array&lt;PlanDetailJson&gt; get_available_base_plans

Retrieve available base plans



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogApi.new

begin
  #Retrieve available base plans
  result = api_instance.get_available_base_plans
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogApi->get_available_base_plans: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PlanDetailJson&gt;**](PlanDetailJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_catalog_json**
> StaticCatalog get_catalog_json(opts)

Retrieve the catalog as JSON



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogApi.new

opts = { 
  requested_date: "requested_date_example" # String | 
}

begin
  #Retrieve the catalog as JSON
  result = api_instance.get_catalog_json(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogApi->get_catalog_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requested_date** | **String**|  | [optional] 

### Return type

[**StaticCatalog**](StaticCatalog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **upload_catalog_xml**
> upload_catalog_xml(opts)

Upload the full catalog as XML



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CatalogApi.new

opts = { 
  body: "body_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Upload the full catalog as XML
  api_instance.upload_catalog_xml(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CatalogApi->upload_catalog_xml: #{e}"
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



