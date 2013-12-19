class Agent < ActiveRecord::Base  
  has_secure_password
  has_many :properties ,:dependent => :delete_all
  has_many :viewings ,  :dependent => :delete_all
  has_many :buyers,     :dependent => :delete_all 
  has_many :posts, :dependent => :delete_all  
  validates_presence_of :first_name, :last_name, :phone, :email 
  validates_length_of :phone, :minimum => 8, :maximum => 8, :allow_blank => true 
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i   
  
  
end
