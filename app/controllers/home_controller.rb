class HomeController < ApplicationController
  def index
      @say = "~~~~~이름을 넣어라~~~~~"
      
  end
  
  def index2
      @pick = Student.all
  
  end
  
  def index3
    
    table = Student.new
    
    table.one = [params[:a],params[:b],params[:c],params[:d],params[:e],params[:f],params[:g],params[:h],params[:i],params[:j]].sample(1)
    
    table.save
    
    redirect_to "/index2"
  end
  
  def destroy
      @one_post = Student.find(params[:post_id])
      @one_post.destroy
      redirect_to "/index2"
  end
  
  def update_view
    
  end
  
end
