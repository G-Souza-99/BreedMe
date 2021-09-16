class PetsController < ApplicationController
  before_action :set_pet, only: %i[show edit update destroy]

  def index
    session[:last_page] = 'pets_index'
    if !params[:pet1].nil?
      @pets = []
      params.each do |key, value|
        if key.include?("pet")
          @pets <<  policy_scope(Pet).where(breed: value)
        end
      end
      @pets.flatten!
    else
      @pets = policy_scope(Pet).order(:on_heat, sex: :desc)
    end
      if !params[:pet_type].nil?
      @pets = @pets.select { |pet| pet.pet_type == params[:pet_type] }
      else
       @pets = @pets.select { |pet| pet.pet_type == "dog"}
      end
  end

  def show
    @chatroom = Chatroom.find_by(user: current_user, owner: @pet.user)
    @marker =
      {
        lat: @pet.latitude,
        lng: @pet.longitude
      }
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    authorize @pet
    if @pet.save
      redirect_to my_pets_pets_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  def my_pets
    @pets = Pet.where(user: current_user)
    authorize Pet
    session[:last_page] = 'my_pets'
  end

  def change_heat
    set_pet
    if @pet.on_heat
      @pet.update(on_heat: false)
    else
      @pet.update(on_heat: true)
    end
    redirect_to @pet
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
    authorize @pet
  end

  def pet_params
    params.require(:pet).permit(:pet_type, :name, :sex, :breed, :birthday, :pedigree_number, :description, :on_heat, :photo, :address)
  end
end
