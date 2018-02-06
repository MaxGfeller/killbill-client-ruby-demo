# SwaggerClient::TestApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_current_time**](TestApi.md#get_current_time) | **GET** /1.0/kb/test/clock | Get the current time
[**set_test_clock_time**](TestApi.md#set_test_clock_time) | **POST** /1.0/kb/test/clock | Set the current time
[**update_test_clock_time**](TestApi.md#update_test_clock_time) | **PUT** /1.0/kb/test/clock | Move the current time
[**wait_for_queues_to_complete**](TestApi.md#wait_for_queues_to_complete) | **GET** /1.0/kb/test/queues | Wait for all available bus events and notifications to be processed


# **get_current_time**
> ClockResource get_current_time(opts)

Get the current time



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TestApi.new

opts = { 
  time_zone: "time_zone_example" # String | 
}

begin
  #Get the current time
  result = api_instance.get_current_time(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestApi->get_current_time: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_zone** | **String**|  | [optional] 

### Return type

[**ClockResource**](ClockResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_test_clock_time**
> ClockResource set_test_clock_time(opts)

Set the current time



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TestApi.new

opts = { 
  requested_date: "requested_date_example", # String | 
  time_zone: "time_zone_example", # String | 
  timeout_sec: 5 # Integer | 
}

begin
  #Set the current time
  result = api_instance.set_test_clock_time(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestApi->set_test_clock_time: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requested_date** | **String**|  | [optional] 
 **time_zone** | **String**|  | [optional] 
 **timeout_sec** | **Integer**|  | [optional] [default to 5]

### Return type

[**ClockResource**](ClockResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_test_clock_time**
> ClockResource update_test_clock_time(opts)

Move the current time



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TestApi.new

opts = { 
  days: 56, # Integer | 
  weeks: 56, # Integer | 
  months: 56, # Integer | 
  years: 56, # Integer | 
  time_zone: "time_zone_example", # String | 
  timeout_sec: 5 # Integer | 
}

begin
  #Move the current time
  result = api_instance.update_test_clock_time(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestApi->update_test_clock_time: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **Integer**|  | [optional] 
 **weeks** | **Integer**|  | [optional] 
 **months** | **Integer**|  | [optional] 
 **years** | **Integer**|  | [optional] 
 **time_zone** | **String**|  | [optional] 
 **timeout_sec** | **Integer**|  | [optional] [default to 5]

### Return type

[**ClockResource**](ClockResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **wait_for_queues_to_complete**
> wait_for_queues_to_complete(opts)

Wait for all available bus events and notifications to be processed



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::TestApi.new

opts = { 
  timeout_sec: 5 # Integer | 
}

begin
  #Wait for all available bus events and notifications to be processed
  api_instance.wait_for_queues_to_complete(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TestApi->wait_for_queues_to_complete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeout_sec** | **Integer**|  | [optional] [default to 5]

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



