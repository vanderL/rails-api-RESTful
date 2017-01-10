class CategorieController < ApplicationController
  def index
    @categories = Categorie.all

        respond_to do |format|
            format.json { render json: @categories }
        end
  end
  
  def create
    @categories = Categorie.create(categorie_params)
    
      respond_to do |format|
          format.json { render json: @categories }
      end
  end
  
  private
    
    def categorie_params
      params.require(categorie).permit(:name)
      
    end
  
end
