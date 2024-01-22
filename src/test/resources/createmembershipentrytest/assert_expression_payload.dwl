%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "contactId": "003Dn00000QNGge",
  "loyaltyProgramMemberId": "0lMDn000001qq4R",
  "loyaltyProgramName": "NTO Insider",
  "membershipNumber": "M156432036",
  "transactionJournals": [
    {
      "activityDate": "2023-06-07T07:00:00.000Z",
      "journalSubType": "Member Enrollment",
      "journalType": "Accrual",
      "loyaltyProgram": "NTO Insider",
      "loyaltyProgramMember": "M156432036",
      "referredMember": null,
      "status": "Pending",
      "transactionJournalId": "0lVDn0000004GnV"
    }
  ]
})