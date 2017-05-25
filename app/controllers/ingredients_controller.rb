class IngredientsController < ApplicationController

  before_action :set_cocktail, only: [:new, :create]

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.cocktail = @cocktail
    if @ingredient.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:restaurant_id])
  end


  def ingredient_params
    params.require(:review).permit(:name)
  end
end

end
