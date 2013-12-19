module ApplicationHelper 

  def signed_in?
    if session[:agent_id].nil?
      return
    else
      @current_agent = Agent.find_by_id(session[:agent_id])
    end 
    end 
  end
     
   
   
      
   
       