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
    "memberAddress": {
      "address1": payload.address1,
      "address2": payload.address2,
      "city": payload.city,
      "state": payload.state,
      "zipCode": payload.zipCode
    },
    "membershipExpirationDate": now() + |P2Y|,
    "associatedContactDetails":  {
         "firstName": payload.first_name,
         "lastName": payload.last_name,
         "email" : payload.email
     }
}