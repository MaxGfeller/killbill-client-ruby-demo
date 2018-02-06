# SwaggerClient::SubscriptionsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_subscription_blocking_state**](SubscriptionsApi.md#add_subscription_blocking_state) | **PUT** /1.0/kb/subscriptions/{subscriptionId}/block | Block a subscription
[**cancel_entitlement_plan**](SubscriptionsApi.md#cancel_entitlement_plan) | **DELETE** /1.0/kb/subscriptions/{subscriptionId} | Cancel an entitlement plan
[**change_entitlement_plan**](SubscriptionsApi.md#change_entitlement_plan) | **PUT** /1.0/kb/subscriptions/{subscriptionId} | Change entitlement plan
[**create_custom_fields**](SubscriptionsApi.md#create_custom_fields) | **POST** /1.0/kb/subscriptions/{subscriptionId}/customFields | Add custom fields to subscription
[**create_entitlement**](SubscriptionsApi.md#create_entitlement) | **POST** /1.0/kb/subscriptions | Create an entitlement
[**create_entitlement_with_add_ons**](SubscriptionsApi.md#create_entitlement_with_add_ons) | **POST** /1.0/kb/subscriptions/createEntitlementWithAddOns | Create an entitlement with addOn products
[**create_entitlements_with_add_ons**](SubscriptionsApi.md#create_entitlements_with_add_ons) | **POST** /1.0/kb/subscriptions/createEntitlementsWithAddOns | Create multiple entitlements with addOn products
[**create_tags**](SubscriptionsApi.md#create_tags) | **POST** /1.0/kb/subscriptions/{subscriptionId}/tags | Add tags to subscription
[**delete_custom_fields**](SubscriptionsApi.md#delete_custom_fields) | **DELETE** /1.0/kb/subscriptions/{subscriptionId}/customFields | Remove custom fields from subscription
[**delete_tags**](SubscriptionsApi.md#delete_tags) | **DELETE** /1.0/kb/subscriptions/{subscriptionId}/tags | Remove tags from subscription
[**get_custom_fields**](SubscriptionsApi.md#get_custom_fields) | **GET** /1.0/kb/subscriptions/{subscriptionId}/customFields | Retrieve subscription custom fields
[**get_entitlement**](SubscriptionsApi.md#get_entitlement) | **GET** /1.0/kb/subscriptions/{subscriptionId} | Retrieve a subscription by id
[**get_tags**](SubscriptionsApi.md#get_tags) | **GET** /1.0/kb/subscriptions/{subscriptionId}/tags | Retrieve subscription tags
[**uncancel_entitlement_plan**](SubscriptionsApi.md#uncancel_entitlement_plan) | **PUT** /1.0/kb/subscriptions/{subscriptionId}/uncancel | Un-cancel an entitlement
[**update_subscription_bcd**](SubscriptionsApi.md#update_subscription_bcd) | **PUT** /1.0/kb/subscriptions/{subscriptionId}/bcd | Update the BCD associated to a subscription


# **add_subscription_blocking_state**
> add_subscription_blocking_state(subscription_id, opts)

Block a subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  body: SwaggerClient::BlockingStateJson.new, # BlockingStateJson | 
  requested_date: "requested_date_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Block a subscription
  api_instance.add_subscription_blocking_state(subscription_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->add_subscription_blocking_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
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



# **cancel_entitlement_plan**
> cancel_entitlement_plan(subscription_id, opts)

Cancel an entitlement plan



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  requested_date: "requested_date_example", # String | 
  call_completion: false, # BOOLEAN | 
  call_timeout_sec: 5, # Integer | 
  entitlement_policy: "entitlement_policy_example", # String | 
  billing_policy: "billing_policy_example", # String | 
  use_requested_date_for_billing: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Cancel an entitlement plan
  api_instance.cancel_entitlement_plan(subscription_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->cancel_entitlement_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **requested_date** | **String**|  | [optional] 
 **call_completion** | **BOOLEAN**|  | [optional] [default to false]
 **call_timeout_sec** | **Integer**|  | [optional] [default to 5]
 **entitlement_policy** | **String**|  | [optional] 
 **billing_policy** | **String**|  | [optional] 
 **use_requested_date_for_billing** | **BOOLEAN**|  | [optional] [default to false]
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
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



# **change_entitlement_plan**
> change_entitlement_plan(subscription_id, opts)

Change entitlement plan



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  body: SwaggerClient::SubscriptionJson.new, # SubscriptionJson | 
  requested_date: "requested_date_example", # String | 
  call_completion: false, # BOOLEAN | 
  call_timeout_sec: 3, # Integer | 
  billing_policy: "billing_policy_example", # String | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Change entitlement plan
  api_instance.change_entitlement_plan(subscription_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->change_entitlement_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **body** | [**SubscriptionJson**](SubscriptionJson.md)|  | [optional] 
 **requested_date** | **String**|  | [optional] 
 **call_completion** | **BOOLEAN**|  | [optional] [default to false]
 **call_timeout_sec** | **Integer**|  | [optional] [default to 3]
 **billing_policy** | **String**|  | [optional] 
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



# **create_custom_fields**
> create_custom_fields(subscription_id, opts)

Add custom fields to subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  body: [SwaggerClient::CustomFieldJson.new], # Array<CustomFieldJson> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add custom fields to subscription
  api_instance.create_custom_fields(subscription_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
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



# **create_entitlement**
> create_entitlement(opts)

Create an entitlement



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

opts = { 
  body: SwaggerClient::SubscriptionJson.new, # SubscriptionJson | 
  requested_date: "requested_date_example", # String | 
  entitlement_date: "entitlement_date_example", # String | 
  billing_date: "billing_date_example", # String | 
  migrated: false, # BOOLEAN | 
  bcd: 56, # Integer | 
  call_completion: false, # BOOLEAN | 
  call_timeout_sec: 3, # Integer | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Create an entitlement
  api_instance.create_entitlement(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_entitlement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubscriptionJson**](SubscriptionJson.md)|  | [optional] 
 **requested_date** | **String**|  | [optional] 
 **entitlement_date** | **String**|  | [optional] 
 **billing_date** | **String**|  | [optional] 
 **migrated** | **BOOLEAN**|  | [optional] [default to false]
 **bcd** | **Integer**|  | [optional] 
 **call_completion** | **BOOLEAN**|  | [optional] [default to false]
 **call_timeout_sec** | **Integer**|  | [optional] [default to 3]
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



# **create_entitlement_with_add_ons**
> create_entitlement_with_add_ons(opts)

Create an entitlement with addOn products



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

opts = { 
  body: [SwaggerClient::SubscriptionJson.new], # Array<SubscriptionJson> | 
  requested_date: "requested_date_example", # String | 
  entitlement_date: "entitlement_date_example", # String | 
  billing_date: "billing_date_example", # String | 
  migrated: false, # BOOLEAN | 
  call_completion: false, # BOOLEAN | 
  call_timeout_sec: 3, # Integer | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Create an entitlement with addOn products
  api_instance.create_entitlement_with_add_ons(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_entitlement_with_add_ons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Array&lt;SubscriptionJson&gt;**](SubscriptionJson.md)|  | [optional] 
 **requested_date** | **String**|  | [optional] 
 **entitlement_date** | **String**|  | [optional] 
 **billing_date** | **String**|  | [optional] 
 **migrated** | **BOOLEAN**|  | [optional] [default to false]
 **call_completion** | **BOOLEAN**|  | [optional] [default to false]
 **call_timeout_sec** | **Integer**|  | [optional] [default to 3]
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



# **create_entitlements_with_add_ons**
> create_entitlements_with_add_ons(opts)

Create multiple entitlements with addOn products



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

opts = { 
  body: [SwaggerClient::BulkBaseSubscriptionAndAddOnsJson.new], # Array<BulkBaseSubscriptionAndAddOnsJson> | 
  requested_date: "requested_date_example", # String | 
  entitlement_date: "entitlement_date_example", # String | 
  billing_date: "billing_date_example", # String | 
  migrated: false, # BOOLEAN | 
  call_completion: false, # BOOLEAN | 
  call_timeout_sec: 3, # Integer | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Create multiple entitlements with addOn products
  api_instance.create_entitlements_with_add_ons(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_entitlements_with_add_ons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Array&lt;BulkBaseSubscriptionAndAddOnsJson&gt;**](BulkBaseSubscriptionAndAddOnsJson.md)|  | [optional] 
 **requested_date** | **String**|  | [optional] 
 **entitlement_date** | **String**|  | [optional] 
 **billing_date** | **String**|  | [optional] 
 **migrated** | **BOOLEAN**|  | [optional] [default to false]
 **call_completion** | **BOOLEAN**|  | [optional] [default to false]
 **call_timeout_sec** | **Integer**|  | [optional] [default to 3]
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



# **create_tags**
> create_tags(subscription_id, opts)

Add tags to subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add tags to subscription
  api_instance.create_tags(subscription_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->create_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
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
> delete_custom_fields(subscription_id, opts)

Remove custom fields from subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  custom_field_list: "custom_field_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove custom fields from subscription
  api_instance.delete_custom_fields(subscription_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->delete_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
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
> delete_tags(subscription_id, opts)

Remove tags from subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove tags from subscription
  api_instance.delete_tags(subscription_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->delete_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
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



# **get_custom_fields**
> Array&lt;CustomFieldJson&gt; get_custom_fields(subscription_id, opts)

Retrieve subscription custom fields



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve subscription custom fields
  result = api_instance.get_custom_fields(subscription_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;CustomFieldJson&gt;**](CustomFieldJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_entitlement**
> SubscriptionJson get_entitlement(subscription_id, opts)

Retrieve a subscription by id



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve a subscription by id
  result = api_instance.get_entitlement(subscription_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_entitlement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**SubscriptionJson**](SubscriptionJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tags**
> Array&lt;TagJson&gt; get_tags(subscription_id, opts)

Retrieve subscription tags



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  audit: "NONE", # String | 
  included_deleted: false # BOOLEAN | 
}

begin
  #Retrieve subscription tags
  result = api_instance.get_tags(subscription_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->get_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]
 **included_deleted** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;TagJson&gt;**](TagJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **uncancel_entitlement_plan**
> uncancel_entitlement_plan(subscription_id, opts)

Un-cancel an entitlement



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Un-cancel an entitlement
  api_instance.uncancel_entitlement_plan(subscription_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->uncancel_entitlement_plan: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
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



# **update_subscription_bcd**
> update_subscription_bcd(subscription_id, opts)

Update the BCD associated to a subscription



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscriptionsApi.new

subscription_id = "subscription_id_example" # String | 

opts = { 
  body: SwaggerClient::SubscriptionJson.new, # SubscriptionJson | 
  effective_from_date: "effective_from_date_example", # String | 
  force_new_bcd_with_past_effective_date: false, # BOOLEAN | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Update the BCD associated to a subscription
  api_instance.update_subscription_bcd(subscription_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscriptionsApi->update_subscription_bcd: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_id** | **String**|  | 
 **body** | [**SubscriptionJson**](SubscriptionJson.md)|  | [optional] 
 **effective_from_date** | **String**|  | [optional] 
 **force_new_bcd_with_past_effective_date** | **BOOLEAN**|  | [optional] [default to false]
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



