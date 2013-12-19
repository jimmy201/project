# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  
a = Agent.create(first_name:'Joe',last_name:'Dunne',email:'joedunne101@gmail.com',phone:12345678,password:1111) 
p = Property.create(address:'the hill',no_of_beds:'3',price:'350000',photo:'house1.jpg',description:'nice house',agent_id:a) 
b = Buyer.create(first_name:'Pat',last_name:'Kelly',email:'patkelly101@gmail.com',phone:87654321,agent_id:a) 


Viewing.create(date:'2009 november 23',time:'12.23',agent_id:a,property_id:p,buyer_id:b) 
