class PagesController < ApplicationController
  def homepage
    @breeds = [['Breed (all)', '']] + Animal.pluck(:breed).uniq
  end
end
