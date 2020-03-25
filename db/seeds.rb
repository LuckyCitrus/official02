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
Department.create!([
  {departmentname: "Logistics", company_id: 1},
  {departmentname: "Human Resources", company_id: 2},
  {departmentname: "Leaderships", company_id: 3}
])
Employee.create!([
  {empfname: "EmpFirstName01", emplname: "EmpLastName01", address: "Address01", email: "Email01", phone: "(111)111-1111", title: "Title01", hiredate: "2020-01-01", department_id: 2, employeestatus_id: 1, dummyuser_id: 1},
  {empfname: "EmpFirstName02", emplname: "EmpLastName02", address: "Address03", email: "Email03", phone: "(333)333-3333", title: "Title03", hiredate: "2020-03-03", department_id: 1, employeestatus_id: 4, dummyuser_id: 3},
  {empfname: "EmpFirstName02", emplname: "EmpLastName02", address: "Address02", email: "Email02", phone: "(222)222-2222", title: "Title02", hiredate: "2020-02-02", department_id: 3, employeestatus_id: 3, dummyuser_id: 2}
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
  {date: "2020-01-01", quantity: 1, warehouse_id: 1, shipmentmethod_id: 2, shipmentstatus_id: 2, shipmentnum: "Shipmentnum01"},
  {date: "2020-02-02", quantity: 2, warehouse_id: 2, shipmentmethod_id: 1, shipmentstatus_id: 1, shipmentnum: "Shipmentnum02"},
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
