# SwaggerClient::AdminApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_queue_entries**](AdminApi.md#get_queue_entries) | **GET** /1.0/kb/admin/queues | Get queues entries
[**invalidates_cache**](AdminApi.md#invalidates_cache) | **DELETE** /1.0/kb/admin/cache | Invalidates the given Cache if specified, otherwise invalidates all caches
[**invalidates_cache_by_account**](AdminApi.md#invalidates_cache_by_account) | **DELETE** /1.0/kb/admin/cache/accounts/{accountId} | Invalidates Caches per account level
[**invalidates_cache_by_tenant**](AdminApi.md#invalidates_cache_by_tenant) | **DELETE** /1.0/kb/admin/cache/tenants | Invalidates Caches per tenant level
[**trigger_invoice_generation_for_parked_accounts**](AdminApi.md#trigger_invoice_generation_for_parked_accounts) | **POST** /1.0/kb/admin/invoices | Trigger an invoice generation for all parked accounts
[**update_payment_transaction_state**](AdminApi.md#update_payment_transaction_state) | **PUT** /1.0/kb/admin/payments/{paymentId}/transactions/{paymentTransactionId} | Update existing paymentTransaction and associated payment state


# **get_queue_entries**
> get_queue_entries(opts)

Get queues entries



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AdminApi.new

opts = { 
  account_id: "account_id_example", # String | 
  queue_name: "queue_name_example", # String | 
  service_name: "service_name_example", # String | 
  with_history: true, # BOOLEAN | 
  min_date: "min_date_example", # String | 
  max_date: "max_date_example", # String | 
  with_in_processing: true, # BOOLEAN | 
  with_bus_events: true, # BOOLEAN | 
  with_notifications: true # BOOLEAN | 
}

begin
  #Get queues entries
  api_instance.get_queue_entries(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AdminApi->get_queue_entries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | [optional] 
 **queue_name** | **String**|  | [optional] 
 **service_name** | **String**|  | [optional] 
 **with_history** | **BOOLEAN**|  | [optional] [default to true]
 **min_date** | **String**|  | [optional] 
 **max_date** | **String**|  | [optional] 
 **with_in_processing** | **BOOLEAN**|  | [optional] [default to true]
 **with_bus_events** | **BOOLEAN**|  | [optional] [default to true]
 **with_notifications** | **BOOLEAN**|  | [optional] [default to true]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **invalidates_cache**
> invalidates_cache(opts)

Invalidates the given Cache if specified, otherwise invalidates all caches



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AdminApi.new

opts = { 
  cache_name: "cache_name_example" # String | 
}

begin
  #Invalidates the given Cache if specified, otherwise invalidates all caches
  api_instance.invalidates_cache(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AdminApi->invalidates_cache: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cache_name** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **invalidates_cache_by_account**
> invalidates_cache_by_account(account_id)

Invalidates Caches per account level



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AdminApi.new

account_id = "account_id_example" # String | 


begin
  #Invalidates Caches per account level
  api_instance.invalidates_cache_by_account(account_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AdminApi->invalidates_cache_by_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **invalidates_cache_by_tenant**
> invalidates_cache_by_tenant(opts)

Invalidates Caches per tenant level



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AdminApi.new

opts = { 
  tenant_api_key: "tenant_api_key_example" # String | 
}

begin
  #Invalidates Caches per tenant level
  api_instance.invalidates_cache_by_tenant(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AdminApi->invalidates_cache_by_tenant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_api_key** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **trigger_invoice_generation_for_parked_accounts**
> trigger_invoice_generation_for_parked_accounts(opts)

Trigger an invoice generation for all parked accounts



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AdminApi.new

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Trigger an invoice generation for all parked accounts
  api_instance.trigger_invoice_generation_for_parked_accounts(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AdminApi->trigger_invoice_generation_for_parked_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
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



# **update_payment_transaction_state**
> update_payment_transaction_state(payment_id, payment_transaction_id, opts)

Update existing paymentTransaction and associated payment state



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AdminApi.new

payment_id = "payment_id_example" # String | 

payment_transaction_id = "payment_transaction_id_example" # String | 

opts = { 
  body: SwaggerClient::AdminPaymentJson.new, # AdminPaymentJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Update existing paymentTransaction and associated payment state
  api_instance.update_payment_transaction_state(payment_id, payment_transaction_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AdminApi->update_payment_transaction_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **String**|  | 
 **payment_transaction_id** | **String**|  | 
 **body** | [**AdminPaymentJson**](AdminPaymentJson.md)|  | [optional] 
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



