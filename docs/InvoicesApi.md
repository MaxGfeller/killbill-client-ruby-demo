# SwaggerClient::InvoicesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adjust_invoice_item**](InvoicesApi.md#adjust_invoice_item) | **POST** /1.0/kb/invoices/{invoiceId} | Adjust an invoice item
[**commit_invoice**](InvoicesApi.md#commit_invoice) | **PUT** /1.0/kb/invoices/{invoiceId}/commitInvoice | Perform the invoice status transition from DRAFT to COMMITTED
[**create_custom_fields**](InvoicesApi.md#create_custom_fields) | **POST** /1.0/kb/invoices/{invoiceId}/customFields | Add custom fields to invoice
[**create_external_charges**](InvoicesApi.md#create_external_charges) | **POST** /1.0/kb/invoices/charges/{accountId} | Create external charge(s)
[**create_future_invoice**](InvoicesApi.md#create_future_invoice) | **POST** /1.0/kb/invoices | Trigger an invoice generation
[**create_instant_payment**](InvoicesApi.md#create_instant_payment) | **POST** /1.0/kb/invoices/{invoiceId}/payments | Trigger a payment for invoice
[**create_migration_invoice**](InvoicesApi.md#create_migration_invoice) | **POST** /1.0/kb/invoices/migration/{accountId} | Create a migration invoice
[**create_tags**](InvoicesApi.md#create_tags) | **POST** /1.0/kb/invoices/{invoiceId}/tags | Add tags to invoice
[**delete_cba**](InvoicesApi.md#delete_cba) | **DELETE** /1.0/kb/invoices/{invoiceId}/{invoiceItemId}/cba | Delete a CBA item
[**delete_custom_fields**](InvoicesApi.md#delete_custom_fields) | **DELETE** /1.0/kb/invoices/{invoiceId}/customFields | Remove custom fields from invoice
[**delete_tags**](InvoicesApi.md#delete_tags) | **DELETE** /1.0/kb/invoices/{invoiceId}/tags | Remove tags from invoice
[**generate_dry_run_invoice**](InvoicesApi.md#generate_dry_run_invoice) | **POST** /1.0/kb/invoices/dryRun | Generate a dryRun invoice
[**get_custom_fields**](InvoicesApi.md#get_custom_fields) | **GET** /1.0/kb/invoices/{invoiceId}/customFields | Retrieve invoice custom fields
[**get_invoice**](InvoicesApi.md#get_invoice) | **GET** /1.0/kb/invoices/{invoiceId} | Retrieve an invoice by id
[**get_invoice_as_html**](InvoicesApi.md#get_invoice_as_html) | **GET** /1.0/kb/invoices/{invoiceId}/html | Render an invoice as HTML
[**get_invoice_by_number**](InvoicesApi.md#get_invoice_by_number) | **GET** /1.0/kb/invoices/{invoiceNumber} | Retrieve an invoice by number
[**get_invoices**](InvoicesApi.md#get_invoices) | **GET** /1.0/kb/invoices/pagination | List invoices
[**get_payments**](InvoicesApi.md#get_payments) | **GET** /1.0/kb/invoices/{invoiceId}/payments | Retrieve payments associated with an invoice
[**get_tags**](InvoicesApi.md#get_tags) | **GET** /1.0/kb/invoices/{invoiceId}/tags | Retrieve invoice tags
[**search_invoices**](InvoicesApi.md#search_invoices) | **GET** /1.0/kb/invoices/search/{searchKey} | Search invoices
[**trigger_email_notification_for_invoice**](InvoicesApi.md#trigger_email_notification_for_invoice) | **POST** /1.0/kb/invoices/{invoiceId}/emailNotifications | Trigger an email notification for invoice
[**upload_catalog_translation**](InvoicesApi.md#upload_catalog_translation) | **POST** /1.0/kb/invoices/catalogTranslation/{locale} | Upload the catalog translation for the tenant
[**upload_invoice_mp_template**](InvoicesApi.md#upload_invoice_mp_template) | **POST** /1.0/kb/invoices/manualPayTemplate | Upload the manualPay invoice template for the tenant
[**upload_invoice_template**](InvoicesApi.md#upload_invoice_template) | **POST** /1.0/kb/invoices/template | Upload the invoice template for the tenant
[**upload_invoice_translation**](InvoicesApi.md#upload_invoice_translation) | **POST** /1.0/kb/invoices/translation/{locale} | Upload the invoice translation for the tenant


# **adjust_invoice_item**
> adjust_invoice_item(invoice_id, opts)

Adjust an invoice item



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  body: SwaggerClient::InvoiceItemJson.new, # InvoiceItemJson | 
  requested_date: "requested_date_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Adjust an invoice item
  api_instance.adjust_invoice_item(invoice_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->adjust_invoice_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **body** | [**InvoiceItemJson**](InvoiceItemJson.md)|  | [optional] 
 **requested_date** | **String**|  | [optional] 
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



# **commit_invoice**
> commit_invoice(invoice_id, opts)

Perform the invoice status transition from DRAFT to COMMITTED



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Perform the invoice status transition from DRAFT to COMMITTED
  api_instance.commit_invoice(invoice_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->commit_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
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
> create_custom_fields(invoice_id, opts)

Add custom fields to invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  body: [SwaggerClient::CustomFieldJson.new], # Array<CustomFieldJson> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add custom fields to invoice
  api_instance.create_custom_fields(invoice_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->create_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
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



# **create_external_charges**
> Array&lt;InvoiceItemJson&gt; create_external_charges(account_id, opts)

Create external charge(s)



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: SwaggerClient::IterableInvoiceItemJson.new, # IterableInvoiceItemJson | 
  requested_date: "requested_date_example", # String | 
  pay_invoice: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  auto_commit: false, # BOOLEAN | 
  payment_external_key: "payment_external_key_example", # String | 
  transaction_external_key: "transaction_external_key_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Create external charge(s)
  result = api_instance.create_external_charges(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->create_external_charges: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**IterableInvoiceItemJson**](IterableInvoiceItemJson.md)|  | [optional] 
 **requested_date** | **String**|  | [optional] 
 **pay_invoice** | **BOOLEAN**|  | [optional] [default to false]
 **plugin_property** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **auto_commit** | **BOOLEAN**|  | [optional] [default to false]
 **payment_external_key** | **String**|  | [optional] 
 **transaction_external_key** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

[**Array&lt;InvoiceItemJson&gt;**](InvoiceItemJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_future_invoice**
> InvoiceJson create_future_invoice(opts)

Trigger an invoice generation



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

opts = { 
  account_id: "account_id_example", # String | 
  target_date: "target_date_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Trigger an invoice generation
  result = api_instance.create_future_invoice(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->create_future_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | [optional] 
 **target_date** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_instant_payment**
> create_instant_payment(opts)

Trigger a payment for invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

opts = { 
  body: SwaggerClient::InvoicePaymentJson.new, # InvoicePaymentJson | 
  external_payment: false, # BOOLEAN | 
  plugin_property: ["plugin_property_example"], # Array<String> | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Trigger a payment for invoice
  api_instance.create_instant_payment(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->create_instant_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InvoicePaymentJson**](InvoicePaymentJson.md)|  | [optional] 
 **external_payment** | **BOOLEAN**|  | [optional] [default to false]
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



# **create_migration_invoice**
> InvoiceJson create_migration_invoice(account_id, opts)

Create a migration invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

account_id = "account_id_example" # String | 

opts = { 
  body: SwaggerClient::IterableInvoiceItemJson.new, # IterableInvoiceItemJson | 
  target_date: "target_date_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Create a migration invoice
  result = api_instance.create_migration_invoice(account_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->create_migration_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account_id** | **String**|  | 
 **body** | [**IterableInvoiceItemJson**](IterableInvoiceItemJson.md)|  | [optional] 
 **target_date** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_tags**
> create_tags(invoice_id, opts)

Add tags to invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add tags to invoice
  api_instance.create_tags(invoice_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->create_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
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



# **delete_cba**
> delete_cba(invoice_id, invoice_item_id, opts)

Delete a CBA item



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

invoice_item_id = "invoice_item_id_example" # String | 

opts = { 
  account_id: "account_id_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Delete a CBA item
  api_instance.delete_cba(invoice_id, invoice_item_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->delete_cba: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **invoice_item_id** | **String**|  | 
 **account_id** | **String**|  | [optional] 
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
> delete_custom_fields(invoice_id, opts)

Remove custom fields from invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  custom_field_list: "custom_field_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove custom fields from invoice
  api_instance.delete_custom_fields(invoice_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->delete_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
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
> delete_tags(invoice_id, opts)

Remove tags from invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  tag_list: "tag_list_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Remove tags from invoice
  api_instance.delete_tags(invoice_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->delete_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
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



# **generate_dry_run_invoice**
> InvoiceJson generate_dry_run_invoice(opts)

Generate a dryRun invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

opts = { 
  body: SwaggerClient::InvoiceDryRunJson.new, # InvoiceDryRunJson | 
  account_id: "account_id_example", # String | 
  target_date: "target_date_example", # String | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Generate a dryRun invoice
  result = api_instance.generate_dry_run_invoice(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->generate_dry_run_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InvoiceDryRunJson**](InvoiceDryRunJson.md)|  | [optional] 
 **account_id** | **String**|  | [optional] 
 **target_date** | **String**|  | [optional] 
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_custom_fields**
> Array&lt;CustomFieldJson&gt; get_custom_fields(invoice_id, opts)

Retrieve invoice custom fields



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  audit: "NONE" # String | 
}

begin
  #Retrieve invoice custom fields
  result = api_instance.get_custom_fields(invoice_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;CustomFieldJson&gt;**](CustomFieldJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoice**
> InvoiceJson get_invoice(invoice_id, opts)

Retrieve an invoice by id



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  with_items: false, # BOOLEAN | 
  with_children_items: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #Retrieve an invoice by id
  result = api_instance.get_invoice(invoice_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **with_items** | **BOOLEAN**|  | [optional] [default to false]
 **with_children_items** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoice_as_html**
> String get_invoice_as_html(invoice_id)

Render an invoice as HTML



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 


begin
  #Render an invoice as HTML
  result = api_instance.get_invoice_as_html(invoice_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_as_html: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html



# **get_invoice_by_number**
> InvoiceJson get_invoice_by_number(invoice_number, opts)

Retrieve an invoice by number



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_number = 56 # Integer | 

opts = { 
  with_items: false, # BOOLEAN | 
  with_children_items: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #Retrieve an invoice by number
  result = api_instance.get_invoice_by_number(invoice_number, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoice_by_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_number** | **Integer**|  | 
 **with_items** | **BOOLEAN**|  | [optional] [default to false]
 **with_children_items** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**InvoiceJson**](InvoiceJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_invoices**
> Array&lt;InvoiceJson&gt; get_invoices(opts)

List invoices



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  with_items: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #List invoices
  result = api_instance.get_invoices(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
 **with_items** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;InvoiceJson&gt;**](InvoiceJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payments**
> Array&lt;InvoicePaymentJson&gt; get_payments(invoice_id, opts)

Retrieve payments associated with an invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  audit: "NONE", # String | 
  with_plugin_info: false, # BOOLEAN | 
  with_attempts: false # BOOLEAN | 
}

begin
  #Retrieve payments associated with an invoice
  result = api_instance.get_payments(invoice_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]
 **with_plugin_info** | **BOOLEAN**|  | [optional] [default to false]
 **with_attempts** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;InvoicePaymentJson&gt;**](InvoicePaymentJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_tags**
> Array&lt;TagJson&gt; get_tags(invoice_id, opts)

Retrieve invoice tags



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  audit: "NONE", # String | 
  included_deleted: false # BOOLEAN | 
}

begin
  #Retrieve invoice tags
  result = api_instance.get_tags(invoice_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->get_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
 **audit** | **String**|  | [optional] [default to NONE]
 **included_deleted** | **BOOLEAN**|  | [optional] [default to false]

### Return type

[**Array&lt;TagJson&gt;**](TagJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_invoices**
> Array&lt;InvoiceJson&gt; search_invoices(search_key, opts)

Search invoices



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

search_key = "search_key_example" # String | 

opts = { 
  offset: 0, # Integer | 
  limit: 100, # Integer | 
  with_items: false, # BOOLEAN | 
  audit: "NONE" # String | 
}

begin
  #Search invoices
  result = api_instance.search_invoices(search_key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->search_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_key** | **String**|  | 
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]
 **with_items** | **BOOLEAN**|  | [optional] [default to false]
 **audit** | **String**|  | [optional] [default to NONE]

### Return type

[**Array&lt;InvoiceJson&gt;**](InvoiceJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **trigger_email_notification_for_invoice**
> trigger_email_notification_for_invoice(invoice_id, opts)

Trigger an email notification for invoice



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

invoice_id = "invoice_id_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Trigger an email notification for invoice
  api_instance.trigger_email_notification_for_invoice(invoice_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->trigger_email_notification_for_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **String**|  | 
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



# **upload_catalog_translation**
> upload_catalog_translation(locale, opts)

Upload the catalog translation for the tenant



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

locale = "locale_example" # String | 

opts = { 
  body: "body_example", # String | 
  delete_if_exists: false, # BOOLEAN | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Upload the catalog translation for the tenant
  api_instance.upload_catalog_translation(locale, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->upload_catalog_translation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locale** | **String**|  | 
 **body** | **String**|  | [optional] 
 **delete_if_exists** | **BOOLEAN**|  | [optional] [default to false]
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: text/plain



# **upload_invoice_mp_template**
> upload_invoice_mp_template(opts)

Upload the manualPay invoice template for the tenant



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

opts = { 
  body: "body_example", # String | 
  delete_if_exists: false, # BOOLEAN | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Upload the manualPay invoice template for the tenant
  api_instance.upload_invoice_mp_template(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->upload_invoice_mp_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**|  | [optional] 
 **delete_if_exists** | **BOOLEAN**|  | [optional] [default to false]
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/html
 - **Accept**: text/html



# **upload_invoice_template**
> upload_invoice_template(opts)

Upload the invoice template for the tenant



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

opts = { 
  body: "body_example", # String | 
  delete_if_exists: false, # BOOLEAN | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Upload the invoice template for the tenant
  api_instance.upload_invoice_template(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->upload_invoice_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**|  | [optional] 
 **delete_if_exists** | **BOOLEAN**|  | [optional] [default to false]
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/html
 - **Accept**: text/html



# **upload_invoice_translation**
> upload_invoice_translation(locale, opts)

Upload the invoice translation for the tenant



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::InvoicesApi.new

locale = "locale_example" # String | 

opts = { 
  body: "body_example", # String | 
  delete_if_exists: false, # BOOLEAN | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Upload the invoice translation for the tenant
  api_instance.upload_invoice_translation(locale, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InvoicesApi->upload_invoice_translation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locale** | **String**|  | 
 **body** | **String**|  | [optional] 
 **delete_if_exists** | **BOOLEAN**|  | [optional] [default to false]
 **x_killbill_created_by** | **String**|  | [optional] 
 **x_killbill_reason** | **String**|  | [optional] 
 **x_killbill_comment** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: text/plain



