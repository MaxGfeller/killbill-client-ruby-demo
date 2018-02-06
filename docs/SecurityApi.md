# SwaggerClient::SecurityApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_role_definition**](SecurityApi.md#add_role_definition) | **POST** /1.0/kb/security/roles | Add a new role definition)
[**add_user_roles**](SecurityApi.md#add_user_roles) | **POST** /1.0/kb/security/users | Add a new user with roles (to make api requests)
[**get_current_user_permissions**](SecurityApi.md#get_current_user_permissions) | **GET** /1.0/kb/security/permissions | List user permissions
[**get_current_user_subject**](SecurityApi.md#get_current_user_subject) | **GET** /1.0/kb/security/subject | Get user information
[**get_user_roles**](SecurityApi.md#get_user_roles) | **GET** /1.0/kb/security/users/{username}/roles | Get roles associated to a user
[**invalidate_user**](SecurityApi.md#invalidate_user) | **DELETE** /1.0/kb/security/users/{username} | Invalidate an existing user
[**update_user_password**](SecurityApi.md#update_user_password) | **PUT** /1.0/kb/security/users/{username}/password | Update a user password
[**update_user_roles**](SecurityApi.md#update_user_roles) | **PUT** /1.0/kb/security/users/{username}/roles | Update roles associated to a user


# **add_role_definition**
> add_role_definition(opts)

Add a new role definition)



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecurityApi.new

opts = { 
  body: SwaggerClient::RoleDefinitionJson.new, # RoleDefinitionJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add a new role definition)
  api_instance.add_role_definition(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityApi->add_role_definition: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RoleDefinitionJson**](RoleDefinitionJson.md)|  | [optional] 
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



# **add_user_roles**
> add_user_roles(opts)

Add a new user with roles (to make api requests)



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecurityApi.new

opts = { 
  body: SwaggerClient::UserRolesJson.new, # UserRolesJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Add a new user with roles (to make api requests)
  api_instance.add_user_roles(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityApi->add_user_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserRolesJson**](UserRolesJson.md)|  | [optional] 
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



# **get_current_user_permissions**
> Array&lt;String&gt; get_current_user_permissions

List user permissions



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecurityApi.new

begin
  #List user permissions
  result = api_instance.get_current_user_permissions
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityApi->get_current_user_permissions: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_current_user_subject**
> SubjectJson get_current_user_subject

Get user information



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecurityApi.new

begin
  #Get user information
  result = api_instance.get_current_user_subject
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityApi->get_current_user_subject: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SubjectJson**](SubjectJson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_roles**
> get_user_roles(username)

Get roles associated to a user



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecurityApi.new

username = "username_example" # String | 


begin
  #Get roles associated to a user
  api_instance.get_user_roles(username)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityApi->get_user_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **invalidate_user**
> invalidate_user(username, opts)

Invalidate an existing user



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecurityApi.new

username = "username_example" # String | 

opts = { 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Invalidate an existing user
  api_instance.invalidate_user(username, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityApi->invalidate_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
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



# **update_user_password**
> update_user_password(username, opts)

Update a user password



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecurityApi.new

username = "username_example" # String | 

opts = { 
  body: SwaggerClient::UserRolesJson.new, # UserRolesJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Update a user password
  api_instance.update_user_password(username, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityApi->update_user_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **body** | [**UserRolesJson**](UserRolesJson.md)|  | [optional] 
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



# **update_user_roles**
> update_user_roles(username, opts)

Update roles associated to a user



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SecurityApi.new

username = "username_example" # String | 

opts = { 
  body: SwaggerClient::UserRolesJson.new, # UserRolesJson | 
  x_killbill_created_by: "x_killbill_created_by_example", # String | 
  x_killbill_reason: "x_killbill_reason_example", # String | 
  x_killbill_comment: "x_killbill_comment_example" # String | 
}

begin
  #Update roles associated to a user
  api_instance.update_user_roles(username, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SecurityApi->update_user_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **body** | [**UserRolesJson**](UserRolesJson.md)|  | [optional] 
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



