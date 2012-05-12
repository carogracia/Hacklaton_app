class Policy < ActiveRecord::Base
  attr_accessible :age_range, :auto_id, :city, :company_id, :gender, :marital_status, :occupation, :price
end
