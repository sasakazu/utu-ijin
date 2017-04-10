class IjinsController < ApplicationController


  def index
    @ijins = Ijin.all
  end


  def new
    @ijin = Ijin.new
  end



  def show
    @ijin = Ijin.find(params[:id])
  end

  def edit
    @ijin = Ijin.find(params[:id])
  end



  def create
    @ijin = Ijin.new(ijins_params)
    if @ijin.save
      redirect_to @ijin

    else
     render "new"
    end
  end

  def update
    @ijin = Ijin.find(params[:id])
    if @ijin.update_attributes(ijins_params)
      flash[:success] = "Profile updated"
          redirect_to @ijin
    else
      render 'edit'
    end
  end





     private


         def ijins_params
           params.require(:ijin).permit(:name, :contents, :ijinimage)
         end









end
