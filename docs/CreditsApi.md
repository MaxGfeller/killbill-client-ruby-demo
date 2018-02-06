# SwaggerClient::CreditsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_credit**](CreditsApi.md#create_credit) | **POST** /1.0/kb/credits | Create a credit
[**get_credit**](CreditsApi.md#get_credit) | **GET** /1.0/kb/credits/{creditId} | Retrieve a credit by id


# **create_credit**
> create_credit(opts)

Create a credit



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CreditsApi.new

opts = { 
  body: SwaggerClient::CreditJson.new, # CreditJson | 
  auto_commit: false, # BOOLEAN | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Create a credit
  api_instance.create_credit(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CreditsApi->create_credit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreditJson**](CreditJson.md)|  | [optional] 
 **auto_commit** | **BOOLEAN**|  | [optional] [default to false]
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



# **get_credit**
> CreditJson get_credit(credit_id)

Retrieve a credit by id



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CreditsApi.new

credit_id = "credit_id_example" # String | 


begin
  #Retrieve a credit by id
  result = api_instance.get_credit(credit_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CreditsApi->get_credit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credit_id** | **String**|  | 

### Return type

[**CreditJson**](CreditJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



