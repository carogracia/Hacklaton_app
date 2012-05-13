class Policy < ActiveRecord::Base
  attr_accessible :age_range, :auto_id, :city, :company_id, :gender, :marital_status, :occupation, :price

  belongs_to :car
   belongs_to :company
   has_many :purchase

   def description
     self.company.name + " " + self.car.make
   end
end
