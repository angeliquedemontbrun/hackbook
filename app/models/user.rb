class User < ActiveRecord::Base
  validates :email, presence: true
  validates :email, uniqueness: true

  validate :age_over_18

  def age_over_18 
  	if date_of_birth > 18.years.ago 
  		errors.add(:date_of_birth, 'must be over 18')
  end
end 

def self.named(name)
	where("lower(name) = ?", name.downcase)
end 
end
