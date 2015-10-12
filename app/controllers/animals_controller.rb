class AnimalsController < ApplicationController

  def new
    @region = Region.find(params[:region_id])
    @animal = @region.animals.new
  end

  def create
    @region = Region.find(params[:region_id])
    @animal = @region.animals.new(animal_params)
    if @animal.save
      redirect_to region_path(@animal.region)
    else
      render :new
    end
  end

  def edit
    @region = Region.find(params[:region_id])
    @animal = Animal.find(params[:id])
  end

  def update
    @region = Region.find(params[:region_id])
    @animal = Animal.find(params[:id])
    if @animal.update(animal_params)
      redirect_to region_path(@region)
    else
      render :edit
    end
  end

  def destroy
    @region = Region.find(params[:region_id])
    animal = Animal.find(params[:id])
    animal.destroy
    redirect_to region_path(@region)
  end

  def show
    @animal = Animal.find(params[:id])
    render :show
  end

private
  def animal_params
    params.require(:animal).permit(:species)
  end  

end
