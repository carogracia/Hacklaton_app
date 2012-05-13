class Driver < ActiveRecord::Base
  attr_accessible :age_range, :city, :email, :first_name, :gender, :last_name, :marital_status, :occupation
belongs_to :auto

  def full_name
    self.first_name + " " + self.last_name
  end

    
    
end
