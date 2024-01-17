class Employee < ApplicationRecord
  belongs_to :city
  belongs_to :function
  belongs_to :state

  def self.search_by_name(query)
    where("name_employee LIKE ?", "%#{query}%")
  end
end
