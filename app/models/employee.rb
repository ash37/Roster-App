class Employee < ActiveRecord::Base
  validates_presence_of :dob , :first_name, :last_name, :role, :store_ids
  
  has_many :employments
  has_many :stores, through: :employments
  has_many :unavailabilities
  has_many :shifts
  accepts_nested_attributes_for :unavailabilities, allow_destroy: true
  accepts_nested_attributes_for :shifts
  
  ROLES = ['Sandwich Artist', 'Shift Supervisor', 'Manager', 'Area Manager']
  RATES = [9.79, 10.94, 13.06, (15.18*1.09), (17.29*1.09), (19.72*1.09), (21.17*1.09), (21.99*1.09), (22.40*1.09), (25.00*1.09)] 
  
  
  def pay_rate
    case
    when supervisor?
      RATES[7]
    when manager?
      RATES[8]
    when area_manager?
      RATES[9]
    when age <= 15
      RATES[0]
    when age == 16
      RATES[1]
    when age == 17
      RATES[2]
    when age == 18
      RATES[3]
    when age == 19
      RATES[4]
    when age == 20
      RATES[5]
    when age >= 21
      RATES[6]
    end  
    
  end
  
  
  def supervisor?
    role == ROLES[1]
  end
    
  def manager?
    role == ROLES[2]
  end  
  
  def area_manager?
    role == ROLES[3]
  end   
      
  def age
      now = Time.now.utc.to_date
      now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
    
  def find_or_initialize_shift_by_date(date)
    shifts.find_or_initialize_by_date
  end
end
