# SwaggerClient::NodesInfoApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_nodes_info**](NodesInfoApi.md#get_nodes_info) | **GET** /1.0/kb/nodesInfo | Retrieve all the nodes infos
[**trigger_node_command**](NodesInfoApi.md#trigger_node_command) | **POST** /1.0/kb/nodesInfo | Trigger a node command


# **get_nodes_info**
> Array&lt;PluginInfoJson&gt; get_nodes_info

Retrieve all the nodes infos



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::NodesInfoApi.new

begin
  #Retrieve all the nodes infos
  result = api_instance.get_nodes_info
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NodesInfoApi->get_nodes_info: #{e}"
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



# **trigger_node_command**
> trigger_node_command(opts)

Trigger a node command



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::NodesInfoApi.new

opts = { 
  body: SwaggerClient::NodeCommandJson.new, # NodeCommandJson | 
  local_node_only: false, # BOOLEAN | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Trigger a node command
  api_instance.trigger_node_command(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling NodesInfoApi->trigger_node_command: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NodeCommandJson**](NodeCommandJson.md)|  | [optional] 
 **local_node_only** | **BOOLEAN**|  | [optional] [default to false]
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



