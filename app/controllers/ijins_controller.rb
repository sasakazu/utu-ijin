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



    def create
      @ijin = Ijin.new(ijins_params)
      if @ijin.save
          redirect_to @ijin

        else
          render "new"
        end
     end






     private


         def ijins_params
           params.require(:ijin).permit(:name, :contents, :ijinimage)
         end









end
