# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.destroy_all #use this only in development mode
Auto.destroy_all
Policy.destroy_all



companies = ["Mapfre", "Liberty", "Colseguros"]

companies.each do |company|
  c= Company.create :name => company
end

cars = [{:make => "Ranault", :model => "Twingo", :year => 2012, :use => "personal"}, 
        {:make => "Ranault", :model => "Twingo", :year => 2012, :use => "business"},
        {:make => "Ranault", :model => "Twingo", :year => 2011, :use => "personal"},
        {:make => "Ranault", :model => "Twingo", :year => 2011, :use => "business"}]
        
cars.each do |car|
  a= Auto.create :make => car[:make], :model => car[:model], :year => car[:year], :use => car[:use]
end
# 
age_groups = ["18-25", "26-35", "36+"]
genders = ["M", "F"]
cities = ["Bogota", "Medellin"]
marital_statuses = ["soltero", "casado"]
occupations = ["Student", "Unemployed", "Employed"]


Company.all.each do |company|
  Auto.all.each do |car|
    age_groups.each do |age_group|
      genders.each do |gender|
        cities.each do |city|
          marital_statuses.each do |marital_status|
            occupations.each do |occupation|
              Policy.create :company_id => company.id, :auto_id => car.id, :age_range => age_group, :gender => gender, :city => city, :marital_status => marital_status, :occupation => occupation, :price => rand(700) + 300
            end
          end
        end
      end
    end
  end
end  
  









