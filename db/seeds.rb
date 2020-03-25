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
Company.create!([
                    {companyname: "Mitsab Inc"},
                    {companyname: "Linear Shipping"},
                    {companyname: "CompanyName03"}
                ])
Employeestatus.create!([
                           {employeestatus: "Active"},
                           {employeestatus: "Inactive"},
                           {employeestatus: "Vacation"},
                           {employeestatus: "Sick Leave"}
                       ])
Department.create!([
  {departmentname: "Logistics", company_id: 1},
  {departmentname: "Human Resources", company_id: 2},
  {departmentname: "Leaderships", company_id: 3}
])
Employee.create!([
  {empfname: "EmpFirstName01", emplname: "EmpLastName01", address: "Address01", email: "Email01", phone: "(111)111-1111", title: "Title01", hiredate: "2020-01-01", department_id: 1, employeestatus_id: 1, dummyuser_id: 1},
  {empfname: "EmpFirstName02", emplname: "EmpLastName02", address: "Address02", email: "Email02", phone: "(222)222-2222", title: "Title02", hiredate: "2020-02-02", department_id: 2, employeestatus_id: 2, dummyuser_id: 2},
  {empfname: "EmpFirstName03", emplname: "EmpLastName03", address: "Address03", email: "Email03", phone: "(333)333-3333", title: "Title03", hiredate: "2020-03-03", department_id: 3, employeestatus_id: 3, dummyuser_id: 3}
])
Location.create!([
  {city: "Houston"},
  {city: "Dallas"},
  {city: "Conroe"}
])
Shipmentstatus.create!([
  {shipmentstatus: "In-transit"},
  {shipmentstatus: "Delivered"},
  {shipmentstatus: "Waiting"}
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
  {date: "2020-01-01", quantity: 1, warehouse_id: 1, shipmentmethod_id: 1, shipmentstatus_id: 1, shipmentnum: "Shipmentnum01"},
  {date: "2020-02-02", quantity: 2, warehouse_id: 2, shipmentmethod_id: 2, shipmentstatus_id: 3, shipmentnum: "Shipmentnum02"},
  {date: "2020-03-03", quantity: 3, warehouse_id: 3, shipmentmethod_id: 3, shipmentstatus_id: 3, shipmentnum: "Shipmentnum03"}
])
Orderstatus.create!([
  {orderstatus: "In-Process"},
  {orderstatus: "Completed"},
  {orderstatus: "Incompleted"}
])
Order.create!([
  {date: "2020-01-01", lotstock: 1, quantity: 1, price: "1.11", total: "1.99", orderstatus_id: 1, customer_id: 1, ordernum: "Ordernum01"},
  {date: "2020-02-02", lotstock: 2, quantity: 2, price: "2.22", total: "2.99", orderstatus_id: 2, customer_id: 2, ordernum: "Ordernum02"},
  {date: "2020-03-03", lotstock: 3, quantity: 3, price: "3.33", total: "3.99", orderstatus_id: 3, customer_id: 3, ordernum: "Ordernum03"}
])
Container.create!([
  {company_id: 1, shipment_id: 1, containernum: "Containernum01"},
  {company_id: 2, shipment_id: 2, containernum: "Containernum02"},
  {company_id: 3, shipment_id: 3, containernum: "Containernum03"}
])

Invoicestatus.create!([
  {invoicestatus: "Pending"},
  {invoicestatus: "Paid"},
  {invoicestatus: "Late"}
])
Invoice.create!([
  {invoicedate: "2020-01-01", duedate: "2020-01-01", customer_id: 1, employee_id: 1, invoicestatus_id: 1, amountdue: "1111.11", invoicenum: "Invoicenum01"},
  {invoicedate: "2020-02-02", duedate: "2020-02-02", customer_id: 2, employee_id: 2, invoicestatus_id: 2, amountdue: "2222.22", invoicenum: "Invoicenum02"},
  {invoicedate: "2020-03-03", duedate: "2020-03-03", customer_id: 3, employee_id: 3, invoicestatus_id: 1, amountdue: "3.0", invoicenum: "Invoicenum03"}
])
Paymentmethod.create!([
  {paymenttype: "Bank Wire"},
  {paymenttype: "Credit Card"},
  {paymenttype: "Money Order"}
])
Paymentstatus.create!([
  {paymentstatus: "Paid"},
  {paymentstatus: "Pending"},
  {paymentstatus: "Partial"}
])
Payment.create!([
  {date: "2020-01-01", amount: "1111.11", paymentstatus_id: 1, paymentmethod_id: 1, customer_id: 1, invoice_id: 1, paymentnum: "Paymentnum01"},
  {date: "2020-02-02", amount: "2222.22", paymentstatus_id: 3, paymentmethod_id: 2, customer_id: 2, invoice_id: 2, paymentnum: "Paymentnum02"},
  {date: "2020-03-03", amount: "3333.33", paymentstatus_id: 2, paymentmethod_id: 3, customer_id: 3, invoice_id: 3, paymentnum: "Paymentnum03"}
])
Invoiceshipment.create!([
  {shipment_id: 1, invoice_id: 1},
  {shipment_id: 2, invoice_id: 2},
  {shipment_id: 3, invoice_id: 3}
])
Orderinvoice.create!([
  {order_id: 1, invoice_id: 1},
  {order_id: 2, invoice_id: 2},
  {order_id: 3, invoice_id: 3}
])
Picture.create!([
  {picture: "Picture01", order_id: nil},
  {picture: "Picture02", order_id: nil},
  {picture: "Picture03", order_id: nil}
])
Auction.create!([
  {auctionname: "Copart", address: "1655 RANKIN ROAD HOUSTON, TEXAS 77073 4903", location_id: 1},
  {auctionname: "INSURANCE AUTO AUCTIONS INC", address: "2535 W Mount, Houston, TX 77038", location_id: 2},
  {auctionname: "Auction03", address: "333 Three", location_id: 3}
])
