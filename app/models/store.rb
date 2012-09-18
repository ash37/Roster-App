class Store < ActiveRecord::Base
  
  attr_accessible :address, :name
  
  validates_presence_of :address, :name
  
  has_many :shifts
  has_many :employments
  has_many :employees, through: :employments
  
end
