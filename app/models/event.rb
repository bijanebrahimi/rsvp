class Event < ActiveRecord::Base
  # Associations
  belongs_to :user
  
  # Validations
  validates :name, :presence =>true
  validates :description, :presence =>true
  validates :due_date, :presence =>true
end
