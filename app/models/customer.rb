class Customer < ActiveRecord::Base
   attr_accessible :name, :address
   
   validates :name, length: {maximum:20}
   validates :name, uniqueness:true
   
end
