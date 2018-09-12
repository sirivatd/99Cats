class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    render :show
  end

  def new
    render :new
  end

  def create
    cat = Cat.new(cat_params)
    if cat.save
      redirect_to cats_url
    else
      redirect_to cats_url
    end
  end

  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to cats_url
    end
  end

  def destroy
     cat = Cat.find(params[:id])
    if cat.destroy
      redirect_to cats_url
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :birthdate, :color, :sex, :description)
  end
end
