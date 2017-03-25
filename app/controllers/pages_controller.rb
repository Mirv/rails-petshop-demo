class PagesController < ApplicationController
  def homepage
    @breeds = [['All', '']] + Animal.pluck(:breed).uniq
  end
end
