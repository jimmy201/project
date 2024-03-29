class Property < ActiveRecord::Base 
    
   
  belongs_to :agent
  has_many :viewings , :dependent => :delete_all 
  has_many :posts,  :dependent => :delete_all 
 validates_presence_of :address, :no_of_beds, :agent_id, :price, :photo, :description  
 
  geocoded_by :address
 after_validation :geocode, :if => :address_changed?
  
  
    def self.search(search)
	  search_condition = "%" + search + "%"
	  find(:all,:conditions =>['address Like ?',search_condition])
	  end

 end  

          
