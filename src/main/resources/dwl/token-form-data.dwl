%dw 2.0
import dw::module::Multipart
output multipart/form-data
---
{
  parts: {
    part1: Multipart::field({name:"grant_type",value: p('salesforce.connected_app.grant_type')}),
    part2: Multipart::field({name:"client_id",value: p('salesforce.connected_app.client_id')}),
    part3: Multipart::field({name:"client_secret",value: p('salesforce.connected_app.client_secret')}),
  }
}