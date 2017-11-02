class PetsController < ApplicationController
	before_action :current_user, :is_authenticated

  def index
  	@pets = Pet.all
  end

  def create
  	Pet.create(pet_params)
  	redirect_to pets_path
  end

  def new
  	@pet = Pet.new
  end

  def edit
  	@pet = Pet.find(params[:id])
  end

  def show
  	@pet = Pet.find(params[:id])
  end

  def update
  	t = Pet.find(params[:id])
  	t.update(pet_params)
  	redirect_to pets_path
  end

  def destroy
  	Pet.find(params[:id]).delete
  	redirect_to pets_path
  end

  private

  def pet_params
  	params.require(:pet).permit(:name, :user_id)
  end
end
