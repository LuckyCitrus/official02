# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.create!([
  {companyname: "Mitsab Inc"},
  {companyname: "Linear Shipping"}
])

Location.create!([
  {city: "Houston"},
  {city: "Dallas"},
  {city: "Conroe"}
])
Department.create!([
  {departmentname: "Logistics", company_id: 1},
  {departmentname: "Human Resources", company_id: 2}
])
Employeestatus.create!([
  {employeestatus: "Active"},
  {employeestatus: "Inactive"},
  {employeestatus: "Vacation"},
  {employeestatus: "Sick Leave"}
])
Dummyrole.create!([
  {role: "Admin"},
  {role: "Employee"},
  {role: "Customer"}
])
Country.create!([
  {country_name: "United States"},
  {country_name: "Dubai"},
  {country_name: "Jordan"},
  {country_name: "Mexico"}
])
Customertype.create!([
  {customertype: "Returned"},
  {customertype: "New"},
  {customertype: "Returning"}
])
Customerstatus.create!([
  {customerstatus: "In-line"},
  {customerstatus: "Appointed"},
  {customerstatus: "Occurred "}
])

Shipmentstatus.create!([
                           {shipmentstatus: "In-transit"},
                           {shipmentstatus: "Delivered"},
                           {shipmentstatus: "Waiting"}
                       ])

Auction.create!([
  {auctionname: "Copart", address: "1655 RANKIN ROAD HOUSTON, TEXAS 77073 4903", location_id: 1},
  {auctionname: "INSURANCE AUTO AUCTIONS INC", address: "2535 W Mount, Houston, TX 77038", location_id: 1},
  {auctionname: "Auction 2", address: "222 Two", location_id: 2},
  {auctionname: "Auction 3", address: "333 Three", location_id: 3}
])
Shipmentmethod.create!([
                           {shipmentmethod: "Cargo"},
                           {shipmentmethod: "Airline"},
                           {shipmentmethod: "Ground"}
                       ])
Warehouse.create!([
                      {warehousename: "Houston Warehouse", location_id: 1},
                      {warehousename: "Dallas Warehouse", location_id: 2},
                      {warehousename: "Conroe Warehouse", location_id: 3}
                  ])
Shipment.create!([
  {date: "2020-01-01", quantity: 1, warehouse_id: 1, shipmentmethod_id: 1, shipmentstatus_id: 1},
  {date: "2020-02-02", quantity: 2, warehouse_id: 2, shipmentmethod_id: 2, shipmentstatus_id: 2},
  {date: "2020-03-03", quantity: 3, warehouse_id: 3, shipmentmethod_id: 3, shipmentstatus_id: 3}
])
Orderstatus.create!([
  {customertype: "Open"},
  {customertype: "Pending"},
  {customertype: "Closed"},
  {customertype: "Waiting"}
])
Invoicestatus.create!([
  {invoicestatus: "Pending"},
  {invoicestatus: "Paid"},
  {invoicestatus: "Late"}
])

Paymentstatus.create!([
  {paymentstatus: "Pay"},
  {paymentstatus: "Pending"}
])
Container.create!([
  {company_id: 1, shipment_id: 2, containernum: "Containernum02"},
  {company_id: 2, shipment_id: 1, containernum: "Containernum01"},
  {company_id: 1, shipment_id: 3, containernum: "Containernum03"}
])
Paymentmethod.create!([
  {paymenttype: "Credit Card"},
  {paymenttype: "Direct Deposit"},
  {paymenttype: "Bank Wire"}
])

Customer.create!([
  {first_name: "CustFName01", last_name: "CustLName01", address: "CustAddress01", phone: "(111)111-1111", email: "Cust01@email.com", country_id: nil, customerstatus_id: nil, customertype_id: nil, dummyuser_id: nil},
  {first_name: "CustFName02", last_name: "CustLName02", address: "CustAddress02", phone: "(222)222-2222", email: "Cust02@email.com", country_id: nil, customerstatus_id: nil, customertype_id: nil, dummyuser_id: nil},
  {first_name: "CustFName03", last_name: "CustLName03", address: "CustAddress03", phone: "(333)333-3333", email: "Cust03@email.com", country_id: nil, customerstatus_id: nil, customertype_id: nil, dummyuser_id: nil}
])
Dummyuser.create!([
  {username: "username01", password: "password01", dummyrole_id: 1},
  {username: "username03", password: "password03", dummyrole_id: 2},
  {username: "username02", password: "password02", dummyrole_id: 3}
])
Employee.create!([
  {empfname: "EmpFirstName01", emplname: "EmpLastName01", address: "Address01", email: "Email01", phone: "(111)111-1111", title: "Title01", hiredate: "2020-01-01", department_id: 2, employeestatus_id: 1, dummyuser_id: 1},
  {empfname: "EmpFirstName02", emplname: "EmpLastName02", address: "Address02", email: "Email02", phone: "(222)222-2222", title: "Title02", hiredate: "2020-02-02", department_id: 1, employeestatus_id: 2, dummyuser_id: 2},
  {empfname: "EmpFirstName03", emplname: "EmpLastName03", address: "Address03", email: "Email03", phone: "(333)333-3333", title: "Title03", hiredate: "2020-03-03", department_id: 1, employeestatus_id: 4, dummyuser_id: 3}
])
Titlestatus.create!([
  {titlestatus: "On-hold"},
  {titlestatus: "Delivered"},
  {titlestatus: "Not Applicable"}
])
Keystatus.create!([
  {keystatus: "On-hold"},
  {keystatus: "Delivered"},
  {keystatus: "Not Applicable"}
])
Picture.create!([
  {picture: "Picture01", order_id: nil},
  {picture: "Picture02", order_id: nil},
  {picture: "Picture03", order_id: nil}
])
Order.create!([
  {date: "2020-01-01", lotstock: 1, quantity: 1, price: "1.11", total: "1.99", orderstatus_id: 1, customer_id: nil, ordernum: "Ordernum01"},
  {date: "2020-02-02", lotstock: 2, quantity: 2, price: "2.0", total: "2.99", orderstatus_id: 2, customer_id: nil, ordernum: "Ordernum02"},
  {date: "2020-03-03", lotstock: 3, quantity: 3, price: "3.0", total: "3.99", orderstatus_id: 3, customer_id: nil, ordernum: "Ordernum03"}
])
