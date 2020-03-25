Dummyrole.create!([
  {role: "Admin"},
  {role: "Employee"},
  {role: "Customer"}
])
Customerstatus.create!([
  {customerstatus: "In-line"},
  {customerstatus: "Appointed"},
  {customerstatus: "Occurred "}
])
Customertype.create!([
  {customertype: "New"},
  {customertype: "Returning"},
  {customertype: "Free Trial"}
])
Country.create!([
  {country_name: "United States"},
  {country_name: "Dubai"},
  {country_name: "Jordan"}
])
Dummyuser.create!([
  {username: "username01", password: "password01", dummyrole_id: 1},
  {username: "username02", password: "password02", dummyrole_id: 3},
  {username: "username03", password: "password03", dummyrole_id: 2}
])
Customer.create!([
  {first_name: "CustFName01", last_name: "CustLName01", address: "CustAddress01", phone: "(111)111-1111", email: "Cust01@email.com", country_id: nil, customerstatus_id: nil, customertype_id: nil, dummyuser_id: nil},
  {first_name: "CustFName02", last_name: "CustLName02", address: "CustAddress02", phone: "(222)222-2222", email: "Cust02@email.com", country_id: nil, customerstatus_id: nil, customertype_id: nil, dummyuser_id: nil},
  {first_name: "CustFName03", last_name: "CustLName03", address: "CustAddress03", phone: "(333)333-3333", email: "Cust03@email.com", country_id: nil, customerstatus_id: nil, customertype_id: nil, dummyuser_id: nil}
])
