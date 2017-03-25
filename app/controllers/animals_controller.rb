class AnimalsController < ApplicationController
  def index
    # Remember to fill the Breeds Select for Search partial
    @breeds = [['All', '']] + Animal.pluck(:breed).uniq
    # Initialize with all Animals
    @animals = Animal.all

    # Filter when search is present
    if params[:search].present?
      if params[:search][:name].present?
        @animals = Animal.where(name: params[:search][:name])

      elsif params[:search][:gender].present?
        @animals = Animal.where(gender: params[:search][:gender])

      elsif params[:search][:breed].present?
        @animals = Animal.where(breed: params[:search][:breed])
      end
    end

    # Build the pagination properties
    @animals = @animals.order(:name).page(params[:page])
  end
end
