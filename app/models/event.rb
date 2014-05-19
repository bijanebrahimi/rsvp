class Event < ActiveRecord::Base
  before_save :create_slug
  
  # Associations
  belongs_to :user
  
  # Validations
  validates :name, :presence =>true
  validates :slug, :presence =>true
  validates :due_date, :presence =>true
  
  protected
    def create_slug
      self.slug = "asd"
    end
end
