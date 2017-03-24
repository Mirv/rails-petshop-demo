class AnimalsController < ApplicationController
  def index
    @animals = Animal.all.page(params[:page])
  end
end
