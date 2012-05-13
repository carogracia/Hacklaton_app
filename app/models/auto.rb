class Auto < ActiveRecord::Base
  attr_accessible :make, :model, :use, :year
has_many :drivers

end
