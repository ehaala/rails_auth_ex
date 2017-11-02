class MainController < ApplicationController
  def index
  	@users = User.all
  	@pets = Pet.all
  end
end
