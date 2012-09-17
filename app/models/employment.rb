class Employment < ActiveRecord::Base
  attr_accessible :employee_id, :store_id
  
  belongs_to :store 
  belongs_to :employee
  
end
