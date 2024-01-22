%dw 2.0
output application/json
var payload = vars.requestPayload
---
{
   "enrollmentDate": now(),
   "membershipNumber": payload.custom.membership_number,
   "memberStatus": payload.state,
   "enrollmentChannel": "Pos",
   "additionalMemberFieldValues" : {
   "attributes" : {
     "posName__c" : "Shopify",
     "posMemMobile__c": payload.phone,
     "posMemId__c" : payload.id,
     "posOrderCount__c": payload.orders_count
     }
    },
    "associatedContactDetails":  {
         "firstName": payload.first_name,
         "lastName": payload.last_name,
         "email" : payload.email
     }
}