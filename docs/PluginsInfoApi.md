# SwaggerClient::PluginsInfoApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_plugins_info**](PluginsInfoApi.md#get_plugins_info) | **GET** /1.0/kb/pluginsInfo | Retrieve the list of registered plugins


# **get_plugins_info**
> Array&lt;PluginInfoJson&gt; get_plugins_info

Retrieve the list of registered plugins



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PluginsInfoApi.new

begin
  #Retrieve the list of registered plugins
  result = api_instance.get_plugins_info
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PluginsInfoApi->get_plugins_info: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PluginInfoJson&gt;**](PluginInfoJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



