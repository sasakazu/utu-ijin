class KnowledgesController < ApplicationController



  def index
    @knowledges = Knowledge.all

  end

  def show
    @knowledge = Knowledge.find(params[:id])
  end


  def new
    @knowledge = Knowledge.new
  end

  def edit
    @knowledge = Knowledge.find(params[:id])
  end


  def update
  @knowledge = Knowledge.find(params[:id])
  if @knowledge.update_attributes(knowledge_params)
    flash[:success] = "Profile updated"
        redirect_to @knowledge
  else
    render 'edit'
  end
end




    def create
      @knowledge = Knowledge.new(knowledge_params)
        if @knowledge.save
            redirect_to @knowledge

      	else
      		render "new"
      	end
    end





        private

          def knowledge_params
              params.require(:knowledge).permit(:title,:contents)
          end





end
