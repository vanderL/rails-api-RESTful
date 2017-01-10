class CategorieController < ApplicationController
  def index
    @categories = Categorie.all

        respond_to do |format|
            format.json { render json: @categories }
        end
  end

  def create
        @categorie = Categorie.create(categorie_params)

        respond_to do |format|
            format.json { render json: @categorie }
        end
    end

  private

  def categorie_params
          params.require(:categorie).permit(:name)
      end

end
