class SessionsController < ApplicationController
  def new
  end

  def create 
    agent = Agent.find_by_first_name(params[:first_name]) 
    
    
    if agent && agent.authenticate(params[:password]) 
      session[:agent_id]= agent.id
      redirect_to agent
    else
      flash.now[:error] = "Invalid user name or password"
      render 'new'
    end 
     
    
  end

  def destroy 
    if signed_in?
      session[:agent_id]= nil
      redirect_to properties_indexTwo_path 
    else
      flash[:notice]= "You must be signed in first"
      redirect_to signin_path
    end  
    
  end
end
