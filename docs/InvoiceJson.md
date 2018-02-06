# SwaggerClient::InvoiceJson

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **Float** |  | [optional] 
**currency** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**credit_adj** | **Float** |  | [optional] 
**refund_adj** | **Float** |  | [optional] 
**invoice_id** | **String** |  | [optional] 
**invoice_date** | **Date** |  | [optional] 
**target_date** | **Date** |  | [optional] 
**invoice_number** | **String** |  | [optional] 
**balance** | **Float** |  | [optional] 
**account_id** | **String** |  | [optional] 
**bundle_keys** | **String** |  | [optional] 
**credits** | [**Array&lt;CreditJson&gt;**](CreditJson.md) |  | [optional] 
**items** | [**Array&lt;InvoiceItemJson&gt;**](InvoiceItemJson.md) |  | [optional] 
**is_parent_invoice** | **BOOLEAN** |  | [optional] [default to false]
**audit_logs** | [**Array&lt;AuditLogJson&gt;**](AuditLogJson.md) |  | [optional] 


