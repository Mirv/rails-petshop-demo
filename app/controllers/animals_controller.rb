class AnimalsController < ApplicationController
  def index
    # Remember to fill the Breeds Select for Search partial
    @breeds = [['Breed (all)', '']] + Animal.pluck(:breed).uniq
    # Initialize with all Animals
    @animals = Animal.all

    # Filter when search is present
    if params[:search].present?
      # Using full-text search
      if params[:search][:name_or_owner].present?
        @animals = @animals.by_name_or_owner(params[:search][:name_or_owner])

      elsif params[:search][:gender].present?
        @animals = @animals.where(gender: params[:search][:gender])

      elsif params[:search][:breed].present?
        @animals = @animals.where(breed: params[:search][:breed])

      elsif params[:search][:owner].present?
        @animals = @animals.where(owner: params[:search][:owner])
      end
    end

    # Build the pagination properties
    @animals = @animals.order(:name).page(params[:page])
  end
end
