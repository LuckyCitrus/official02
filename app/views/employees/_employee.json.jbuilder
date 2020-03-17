json.extract! employee, :id, :empfname, :emplname, :address, :email, :phone, :title, :hiredate, :company_id, :department_id, :employeestatus_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
