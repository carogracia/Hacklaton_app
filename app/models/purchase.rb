class Purchase < ActiveRecord::Base
  attr_accessible :driver_id, :policy_id
  belongs_to :policy
  belongs_to :driver
  
  
  
end
