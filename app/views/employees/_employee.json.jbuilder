json.extract! employee, :id, :name_employee, :city_id, :function_id, :state_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
