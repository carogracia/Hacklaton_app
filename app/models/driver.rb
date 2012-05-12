class Driver < ActiveRecord::Base
  attr_accessible :age_range, :city, :email, :first_name, :gender, :last_name, :marital_status, :occupation
end
