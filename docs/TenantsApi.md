# SwaggerClient::TenantsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tenant**](TenantsApi.md#create_tenant) | **POST** /1.0/kb/tenants | Create a tenant
[**delete_per_tenant_configuration**](TenantsApi.md#delete_per_tenant_configuration) | **DELETE** /1.0/kb/tenants/uploadPerTenantConfig | Delete a per tenant configuration (system properties)
[**delete_plugin_configuration**](TenantsApi.md#delete_plugin_configuration) | **DELETE** /1.0/kb/tenants/uploadPluginConfig/{pluginName} | Delete a per tenant configuration for a plugin
[**delete_plugin_payment_state_machine_config**](TenantsApi.md#delete_plugin_payment_state_machine_config) | **DELETE** /1.0/kb/tenants/uploadPluginPaymentStateMachineConfig/{pluginName} | Delete a per tenant payment state machine for a plugin
[**delete_push_notification_callbacks**](TenantsApi.md#delete_push_notification_callbacks) | **DELETE** /1.0/kb/tenants/registerNotificationCallback | Delete a push notification
[**delete_user_key_value**](TenantsApi.md#delete_user_key_value) | **DELETE** /1.0/kb/tenants/userKeyValue/{keyName} | Delete  a per tenant user key/value
[**get_all_plugin_configuration**](TenantsApi.md#get_all_plugin_configuration) | **GET** /1.0/kb/tenants/uploadPerTenantConfig/{keyPrefix}/search | Retrieve a per tenant key value based on key prefix
[**get_per_tenant_configuration**](TenantsApi.md#get_per_tenant_configuration) | **GET** /1.0/kb/tenants/uploadPerTenantConfig | Retrieve a per tenant configuration (system properties)
[**get_plugin_configuration**](TenantsApi.md#get_plugin_configuration) | **GET** /1.0/kb/tenants/uploadPluginConfig/{pluginName} | Retrieve a per tenant configuration for a plugin
[**get_plugin_payment_state_machine_config**](TenantsApi.md#get_plugin_payment_state_machine_config) | **GET** /1.0/kb/tenants/uploadPluginPaymentStateMachineConfig/{pluginName} | Retrieve a per tenant payment state machine for a plugin
[**get_push_notification_callbacks**](TenantsApi.md#get_push_notification_callbacks) | **GET** /1.0/kb/tenants/registerNotificationCallback | Retrieve a push notification
[**get_tenant**](TenantsApi.md#get_tenant) | **GET** /1.0/kb/tenants/{tenantId} | Retrieve a tenant by id
[**get_tenant_by_api_key**](TenantsApi.md#get_tenant_by_api_key) | **GET** /1.0/kb/tenants | Retrieve a tenant by its API key
[**get_user_key_value**](TenantsApi.md#get_user_key_value) | **GET** /1.0/kb/tenants/userKeyValue/{keyName} | Retrieve a per tenant user key/value
[**insert_user_key_value**](TenantsApi.md#insert_user_key_value) | **POST** /1.0/kb/tenants/userKeyValue/{keyName} | Add a per tenant user key/value
[**register_push_notification_callback**](TenantsApi.md#register_push_notification_callback) | **POST** /1.0/kb/tenants/registerNotificationCallback | Create a push notification
[**upload_per_tenant_configuration**](TenantsApi.md#upload_per_tenant_configuration) | **POST** /1.0/kb/tenants/uploadPerTenantConfig | Add a per tenant configuration (system properties)
[**upload_plugin_configuration**](TenantsApi.md#upload_plugin_configuration) | **POST** /1.0/kb/tenants/uploadPluginConfig/{pluginName} | Add a per tenant configuration for a plugin
[**upload_plugin_payment_state_machine_config**](TenantsApi.md#upload_plugin_payment_state_machine_config) | **POST** /1.0/kb/tenants/uploadPluginPaymentStateMachineConfig/{pluginName} | Add a per tenant payment state machine for a plugin


# **create_tenant**
> create_tenant(opts)

Create a tenant



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

opts = { 
  body: SwaggerClient::TenantJson.new, # TenantJson | 
  use_global_default: true, # BOOLEAN | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Create a tenant
  api_instance.create_tenant(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->create_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TenantJson**](TenantJson.md)|  | [optional] 
 **use_global_default** | **BOOLEAN**|  | [optional] [default to true]
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



# **delete_per_tenant_configuration**
> delete_per_tenant_configuration(opts)

Delete a per tenant configuration (system properties)



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Delete a per tenant configuration (system properties)
  api_instance.delete_per_tenant_configuration(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->delete_per_tenant_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_plugin_configuration**
> delete_plugin_configuration(plugin_name, opts)

Delete a per tenant configuration for a plugin



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

plugin_name = "plugin_name_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Delete a per tenant configuration for a plugin
  api_instance.delete_plugin_configuration(plugin_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->delete_plugin_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin_name** | **String**|  | 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_plugin_payment_state_machine_config**
> delete_plugin_payment_state_machine_config(plugin_name, opts)

Delete a per tenant payment state machine for a plugin



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

plugin_name = "plugin_name_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Delete a per tenant payment state machine for a plugin
  api_instance.delete_plugin_payment_state_machine_config(plugin_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->delete_plugin_payment_state_machine_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin_name** | **String**|  | 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_push_notification_callbacks**
> delete_push_notification_callbacks(opts)

Delete a push notification



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Delete a push notification
  api_instance.delete_push_notification_callbacks(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->delete_push_notification_callbacks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_user_key_value**
> delete_user_key_value(key_name, opts)

Delete  a per tenant user key/value



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

key_name = "key_name_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Delete  a per tenant user key/value
  api_instance.delete_user_key_value(key_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->delete_user_key_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_name** | **String**|  | 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_all_plugin_configuration**
> TenantKeyJson get_all_plugin_configuration(key_prefix)

Retrieve a per tenant key value based on key prefix



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

key_prefix = "key_prefix_example" # String | 


begin
  #Retrieve a per tenant key value based on key prefix
  result = api_instance.get_all_plugin_configuration(key_prefix)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->get_all_plugin_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_prefix** | **String**|  | 

### Return type

[**TenantKeyJson**](TenantKeyJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_per_tenant_configuration**
> TenantKeyJson get_per_tenant_configuration

Retrieve a per tenant configuration (system properties)



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

begin
  #Retrieve a per tenant configuration (system properties)
  result = api_instance.get_per_tenant_configuration
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->get_per_tenant_configuration: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantKeyJson**](TenantKeyJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_plugin_configuration**
> TenantKeyJson get_plugin_configuration(plugin_name)

Retrieve a per tenant configuration for a plugin



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

plugin_name = "plugin_name_example" # String | 


begin
  #Retrieve a per tenant configuration for a plugin
  result = api_instance.get_plugin_configuration(plugin_name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->get_plugin_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin_name** | **String**|  | 

### Return type

[**TenantKeyJson**](TenantKeyJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_plugin_payment_state_machine_config**
> TenantKeyJson get_plugin_payment_state_machine_config(plugin_name)

Retrieve a per tenant payment state machine for a plugin



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

plugin_name = "plugin_name_example" # String | 


begin
  #Retrieve a per tenant payment state machine for a plugin
  result = api_instance.get_plugin_payment_state_machine_config(plugin_name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->get_plugin_payment_state_machine_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin_name** | **String**|  | 

### Return type

[**TenantKeyJson**](TenantKeyJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_push_notification_callbacks**
> TenantKeyJson get_push_notification_callbacks

Retrieve a push notification



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

begin
  #Retrieve a push notification
  result = api_instance.get_push_notification_callbacks
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->get_push_notification_callbacks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantKeyJson**](TenantKeyJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tenant**
> TenantJson get_tenant(tenant_id)

Retrieve a tenant by id



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

tenant_id = "tenant_id_example" # String | 


begin
  #Retrieve a tenant by id
  result = api_instance.get_tenant(tenant_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->get_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **String**|  | 

### Return type

[**TenantJson**](TenantJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tenant_by_api_key**
> TenantJson get_tenant_by_api_key(opts)

Retrieve a tenant by its API key



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

opts = { 
  api_key: "api_key_example" # String | 
}

begin
  #Retrieve a tenant by its API key
  result = api_instance.get_tenant_by_api_key(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->get_tenant_by_api_key: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**|  | [optional] 

### Return type

[**TenantJson**](TenantJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_key_value**
> TenantKeyJson get_user_key_value(key_name)

Retrieve a per tenant user key/value



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

key_name = "key_name_example" # String | 


begin
  #Retrieve a per tenant user key/value
  result = api_instance.get_user_key_value(key_name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->get_user_key_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_name** | **String**|  | 

### Return type

[**TenantKeyJson**](TenantKeyJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **insert_user_key_value**
> insert_user_key_value(key_name, opts)

Add a per tenant user key/value



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

key_name = "key_name_example" # String | 

opts = { 
  body: "body_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add a per tenant user key/value
  api_instance.insert_user_key_value(key_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->insert_user_key_value: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_name** | **String**|  | 
 **body** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **register_push_notification_callback**
> register_push_notification_callback(opts)

Create a push notification



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

opts = { 
  cb: "cb_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Create a push notification
  api_instance.register_push_notification_callback(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->register_push_notification_callback: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cb** | **String**|  | [optional] 
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



# **upload_per_tenant_configuration**
> upload_per_tenant_configuration(opts)

Add a per tenant configuration (system properties)



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

opts = { 
  body: "body_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add a per tenant configuration (system properties)
  api_instance.upload_per_tenant_configuration(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->upload_per_tenant_configuration: #{e}"
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

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **upload_plugin_configuration**
> upload_plugin_configuration(plugin_name, opts)

Add a per tenant configuration for a plugin



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

plugin_name = "plugin_name_example" # String | 

opts = { 
  body: "body_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add a per tenant configuration for a plugin
  api_instance.upload_plugin_configuration(plugin_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->upload_plugin_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin_name** | **String**|  | 
 **body** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



# **upload_plugin_payment_state_machine_config**
> upload_plugin_payment_state_machine_config(plugin_name, opts)

Add a per tenant payment state machine for a plugin



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TenantsApi.new

plugin_name = "plugin_name_example" # String | 

opts = { 
  body: "body_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add a per tenant payment state machine for a plugin
  api_instance.upload_plugin_payment_state_machine_config(plugin_name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TenantsApi->upload_plugin_payment_state_machine_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin_name** | **String**|  | 
 **body** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json



