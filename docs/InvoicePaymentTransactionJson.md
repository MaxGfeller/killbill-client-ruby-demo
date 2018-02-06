# SwaggerClient::InvoicePaymentTransactionJson

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_id** | **String** |  | [optional] 
**transaction_external_key** | **String** |  | [optional] 
**payment_id** | **String** | Associated payment id, required when notifying state transitions | [optional] 
**payment_external_key** | **String** |  | [optional] 
**transaction_type** | **String** |  | [optional] 
**amount** | **Float** | Transaction amount, required except for void operations | [optional] 
**currency** | **String** | Amount currency (account currency unless specified) | [optional] 
**effective_date** | **DateTime** |  | [optional] 
**processed_amount** | **Float** |  | [optional] 
**processed_currency** | **String** |  | [optional] 
**status** | **String** | Transaction status, required for state change notifications | [optional] 
**gateway_error_code** | **String** |  | [optional] 
**gateway_error_msg** | **String** |  | [optional] 
**first_payment_reference_id** | **String** |  | [optional] 
**second_payment_reference_id** | **String** |  | [optional] 
**properties** | [**Array&lt;PluginPropertyJson&gt;**](PluginPropertyJson.md) |  | [optional] 
**is_adjusted** | **BOOLEAN** |  | [optional] [default to false]
**adjustments** | [**Array&lt;InvoiceItemJson&gt;**](InvoiceItemJson.md) |  | [optional] 
**audit_logs** | [**Array&lt;AuditLogJson&gt;**](AuditLogJson.md) |  | [optional] 


