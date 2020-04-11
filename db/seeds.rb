require "csv"

Auction.destroy_all
Car.destroy_all
Company.destroy_all
Containerorder.destroy_all
Container.destroy_all
Country.destroy_all
Customer.destroy_all
Customerstatus.destroy_all
Customertype.destroy_all
Department.destroy_all
Employee.destroy_all
Employeestatus.destroy_all
Invoice.destroy_all
Invoiceshipment.destroy_all
Invoicestatus.destroy_all
Keystatus.destroy_all
Location.destroy_all
OrderAuction.destroy_all
Orderinvoice.destroy_all
Order.destroy_all
Orderstatus.destroy_all
Paymentmethod.destroy_all
Payment.destroy_all
Paymentstatus.destroy_all
Shipmentmethod.destroy_all
Shipment.destroy_all
Shipmentstatus.destroy_all
Titlestatus.destroy_all
Warehouse.destroy_all

#===================================================================================

File.open("#{Rails.root}/db/data/locations.csv") do |locations|
  locations.read.each_line do |location|
    city = location
    Location.create!(:city=>city)
  end
end

File.open("#{Rails.root}/db/data/customerstatuses.csv") do |customerstatuses|
  customerstatuses.read.each_line do |customerstatus|
    customerstatus = customerstatus
    Customerstatus.create!(:customerstatus=>customerstatus)
  end
end

File.open("#{Rails.root}/db/data/customertypes.csv") do |customertypes|
  customertypes.read.each_line do |customertype|
    customertype = customertype
    Customertype.create!(:customertype=>customertype)
  end
end

File.open("#{Rails.root}/db/data/employeestatuses.csv") do |employeestatuses|
  employeestatuses.read.each_line do |employeestatus|
    employeestatus = employeestatus
    Employeestatus.create!(:employeestatus=>employeestatus)
  end
end

File.open("#{Rails.root}/db/data/invoicestatuses.csv") do |invoicestatuses|
  invoicestatuses.read.each_line do |invoicestatus|
    invoicestatus = invoicestatus
    Invoicestatus.create!(:invoicestatus=>invoicestatus)
  end
end

File.open("#{Rails.root}/db/data/keystatuses.csv") do |keystatuses|
  keystatuses.read.each_line do |keystatus|
    keystatus = keystatus
    Keystatus.create!(:keystatus=>keystatus)
  end
end

File.open("#{Rails.root}/db/data/orderstatuses.csv") do |orderstatuses|
  orderstatuses.read.each_line do |orderstatus|
    orderstatus = orderstatus
    Orderstatus.create!(:orderstatus=>orderstatus)
  end
end

File.open("#{Rails.root}/db/data/paymentmethods.csv") do |paymentmethods|
  paymentmethods.read.each_line do |paymentmethod|
    paymenttype = paymentmethod
    Paymentmethod.create!(:paymenttype=>paymenttype)
  end
end

File.open("#{Rails.root}/db/data/paymentstatuses.csv") do |paymentstatuses|
  paymentstatuses.read.each_line do |paymentstatus|
    paymentstatus = paymentstatus
    Paymentstatus.create!(:paymentstatus=>paymentstatus)
  end
end

File.open("#{Rails.root}/db/data/shipmentmethods.csv") do |shipmentmethods|
  shipmentmethods.read.each_line do |shipmentmethod|
    shipmentmethod = shipmentmethod
    Shipmentmethod.create!(:shipmentmethod=>shipmentmethod)
  end
end

File.open("#{Rails.root}/db/data/shipmentstatuses.csv") do |shipmentstatuses|
  shipmentstatuses.read.each_line do |shipmentstatus|
    shipmentstatus = shipmentstatus
    Shipmentstatus.create!(:shipmentstatus=>shipmentstatus)
  end
end

File.open("#{Rails.root}/db/data/titlestatuses.csv") do |titlestatuses|
  titlestatuses.read.each_line do |titlestatus|
    titlestatus = titlestatus
    Titlestatus.create!(:titlestatus=>titlestatus)
  end
end

File.open("#{Rails.root}/db/data/countries.csv") do |countries|
  countries.read.each_line do |country|
    country_name = country
    Country.create!(:country_name=>country_name)
  end
end

File.open("#{Rails.root}/db/data/companies.csv") do |companies|
  companies.read.each_line do |company|
    companyname = company
    Company.create!(:companyname=>companyname)
  end
end

#===================================================================================

File.open("#{Rails.root}/db/data/departments.csv") do |departments|
  departments.read.each_line do |department|
    departmentname, company_id = department.chomp.split(",")
    Department.create!(:departmentname=>departmentname, :company_id=>company_id)
  end
end

File.open("#{Rails.root}/db/data/customers.csv") do |customers|
  customers.read.each_line do |customer|
    first_name, last_name, address, phone, email, country_id, customerstatus_id, customertype_id, user_id  = customer.chomp.split(",")
    Customer.create!(:first_name=>first_name, :last_name=>last_name, :address=>address, :phone=>phone, :email=>email, :country_id=>country_id, :customerstatus_id=>customerstatus_id, :customertype_id=>customertype_id, :user_id=>user_id)
  end
end

File.open("#{Rails.root}/db/data/employees.csv") do |employees|
  employees.read.each_line do |employee|
    empfname, emplname, address, email, phone, title, hiredate, department_id, employeestatus_id, user_id  = employee.chomp.split(",")
    Employee.create!(:empfname=>empfname, :emplname=>emplname, :address=>address, :email=>email, :phone=>phone, :title=>title, :hiredate=>hiredate, :department_id=>department_id, :employeestatus_id=>employeestatus_id, :user_id=>user_id)
  end
end

File.open("#{Rails.root}/db/data/auctions.csv") do |auctions|
  auctions.read.each_line do |auction|
    auctionname, address, location_id = auction.chomp.split(",")
    Auction.create!(:auctionname=>auctionname, :address=>address, :location_id=>location_id)
  end
end

File.open("#{Rails.root}/db/data/warehouses.csv") do |warehouses|
  warehouses.read.each_line do |warehouse|
    warehousename, location_id = warehouse.chomp.split(",")
    Warehouse.create!(:warehousename=>warehousename, :location_id=>location_id)
  end
end

File.open("#{Rails.root}/db/data/orders.csv") do |orders|
  orders.read.each_line do |order|
    date, lotstock, quantity, price, total, orderstatus_id, customer_id, ordernum = order.chomp.split(",")
    Order.create!(:date=>date, :lotstock=>lotstock, :quantity=>quantity, :price=>price, :total=>total, :orderstatus_id=>orderstatus_id, :customer_id=>customer_id, :ordernum=>ordernum)
  end
end

File.open("#{Rails.root}/db/data/invoices.csv") do |invoices|
  invoices.read.each_line do |invoice|
    invoicedate, duedate, customer_id, employee_id, invoicestatus_id, amountdue, invoicenum = invoice.chomp.split(",")
    Invoice.create!(:invoicedate=>invoicedate, :duedate=>duedate, :customer_id=>customer_id, :employee_id=>employee_id, :invoicestatus_id=>invoicestatus_id, :amountdue=>amountdue, :invoicenum=>invoicenum)
  end
end

File.open("#{Rails.root}/db/data/payments.csv") do |payments|
  payments.read.each_line do |payment|
    date, amount, paymentstatus_id, paymentmethod_id, customer_id, invoice_id, paymentnum = payment.chomp.split(",")
    Payment.create!(:date=>date, :amount=>amount, :paymentstatus_id=>paymentstatus_id, :paymentmethod_id=>paymentmethod_id, :customer_id=>customer_id, :invoice_id=>invoice_id, :paymentnum=>paymentnum)
  end
end

File.open("#{Rails.root}/db/data/shipments.csv") do |shipments|
  shipments.read.each_line do |shipment|
    date, quantity, warehouse_id, shipmentmethod_id, shipmentstatus_id, shipmentnum = shipment.chomp.split(",")
    Shipment.create!(:date=>date, :quantity=>quantity, :warehouse_id=>warehouse_id, :shipmentmethod_id=>shipmentmethod_id, :shipmentstatus_id=>shipmentstatus_id, :shipmentnum=>shipmentnum)
  end
end

File.open("#{Rails.root}/db/data/containers.csv") do |containers|
  containers.read.each_line do |container|
    company_id, shipment_id, containernum = container.chomp.split(",")
    Container.create!(:company_id=>company_id, :shipment_id=>shipment_id, :containernum=>containernum)
  end
end

File.open("#{Rails.root}/db/data/cars.csv") do |cars|
  cars.read.each_line do |car|
    vinnumber, year, make, model, titlestatus_id, keystatus_id, order_id = car.chomp.split(",")
    Car.create!(:vinnumber=>vinnumber, :year=>year, :make=>make, :model=>model,:titlestatus_id=>titlestatus_id, :keystatus_id=>keystatus_id, :order_id=>order_id)
  end
end

#===================================================================================

File.open("#{Rails.root}/db/data/containerorders.csv") do |containerorders|
  containerorders.read.each_line do |containerorder|
    container_id, order_id = containerorder.chomp.split(",")
    Containerorder.create!(:container_id=>container_id, :order_id=>order_id)
  end
end

File.open("#{Rails.root}/db/data/invoiceshipments.csv") do |invoiceshipments|
  invoiceshipments.read.each_line do |invoiceshipment|
    invoice_id, shipment_id = invoiceshipment.chomp.split(",")
    Invoiceshipment.create!(:invoice_id=>invoice_id, :shipment_id=>shipment_id)
  end
end

File.open("#{Rails.root}/db/data/orderauctions.csv") do |order_auctions|
  order_auctions.read.each_line do |order_auction|
    order_id, auction_id = order_auction.chomp.split(",")
    OrderAuction.create!(:order_id=>order_id, :auction_id=>auction_id)
  end
end

File.open("#{Rails.root}/db/data/orderinvoices.csv") do |orderinvoices|
  orderinvoices.read.each_line do |orderinvoice|
    order_id, invoice_id = orderinvoice.chomp.split(",")
    Orderinvoice.create!(:order_id=>order_id, :invoice_id=>invoice_id)
  end
end

