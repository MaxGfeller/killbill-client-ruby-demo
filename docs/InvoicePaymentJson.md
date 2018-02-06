# SwaggerClient::InvoicePaymentJson

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**target_invoice_id** | **String** |  | [optional] 
**account_id** | **String** |  | [optional] 
**payment_id** | **String** |  | [optional] 
**payment_number** | **String** |  | [optional] 
**payment_external_key** | **String** |  | [optional] 
**auth_amount** | **Float** |  | [optional] 
**captured_amount** | **Float** |  | [optional] 
**purchased_amount** | **Float** |  | [optional] 
**refunded_amount** | **Float** |  | [optional] 
**credited_amount** | **Float** |  | [optional] 
**currency** | **String** |  | [optional] 
**payment_method_id** | **String** |  | [optional] 
**transactions** | [**Array&lt;PaymentTransactionJson&gt;**](PaymentTransactionJson.md) |  | [optional] 
**payment_attempts** | [**Array&lt;PaymentAttemptJson&gt;**](PaymentAttemptJson.md) |  | [optional] 
**audit_logs** | [**Array&lt;AuditLogJson&gt;**](AuditLogJson.md) |  | [optional] 


