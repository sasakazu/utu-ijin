class GoodnewsController < ApplicationController


  def new
    @goodnew = Goodnews.new
  end

  def index
    @goodnews = Goodnews.all
  end

  def show
  end

  def edit
  end


  def update
    @goodnew = Goodnews.find(params[:id])
    if @goodnew.update_attributes(goodnews_params)
      flash[:success] = "Profile updated"
          redirect_to @goodnew
    else
      render 'edit'
    end
  end



  def create
    @goodnew = Goodnews.new(goodnews_params)
    if @goodnew.save
        redirect_to @goodnew

      else
        render "new"
      end
   end






   private


       def goodnews_params
         params.require(:goodnews).permit(:title, :linkimage, :except, :linkurl)
       end











end
