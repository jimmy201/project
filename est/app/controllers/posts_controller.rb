class PostsController < ApplicationController 
    before_filter :authorise
  def create
    @property = Property.find params[:property_id]
    @post = @property.posts.create params[:post]
    @post.agent_id = @current_agent.id
    @post.save
    
    respond_to do |format|
      format.html{redirect_to @property}
    end
  end
  
  
  
  def destroy
    @property = Property.find(params[:property_id])
    @post = Post.find(params[:id])
    @post.destroy
    
    respond_to do |format|
      format.html{redirect_to @property}
    end
  end
  
end
