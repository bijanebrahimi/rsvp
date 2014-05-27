class Reply < ActiveRecord::Base
  # Associations
  belongs_to :event
  
  # Validations
  validates :email, :presence =>true
  validates :status, :presence =>true
  
  # Default Order
  default_scope order('created_at DESC')
end
