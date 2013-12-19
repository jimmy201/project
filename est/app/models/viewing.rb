class Viewing < ActiveRecord::Base 
  belongs_to :agent 
  belongs_to :property
  belongs_to :buyer 
  
  validates_presence_of :time, :date, :agent_id,  :buyer_id, :property_id
end
