class Event < ActiveRecord::Base
  # Associations
  belongs_to :user
  
  # Validations
  validates :name, :presence =>true
  validates :description, :presence =>true
  validates :due_date, :presence =>true
  
  # Default Order
  default_scope order('created_at DESC')
end
