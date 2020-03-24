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
  {country_name: "Jordan"}
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
