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
