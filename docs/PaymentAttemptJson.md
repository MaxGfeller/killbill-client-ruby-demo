# SwaggerClient::PaymentAttemptJson

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** |  | [optional] 
**payment_method_id** | **String** |  | [optional] 
**payment_external_key** | **String** |  | [optional] 
**transaction_id** | **String** |  | [optional] 
**transaction_external_key** | **String** |  | [optional] 
**transaction_type** | **String** |  | [optional] 
**effective_date** | **DateTime** |  | [optional] 
**state_name** | **String** |  | [optional] 
**amount** | **Float** | Transaction amount, required except for void operations | [optional] 
**currency** | **String** | Amount currency (account currency unless specified) | [optional] 
**plugin_name** | **String** |  | [optional] 
**plugin_properties** | [**Array&lt;PluginPropertyJson&gt;**](PluginPropertyJson.md) |  | [optional] 
**audit_logs** | [**Array&lt;AuditLogJson&gt;**](AuditLogJson.md) |  | [optional] 


