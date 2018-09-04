class DepartmentalsController < ApplicationController
  before_action :set_departmental, only: [:show, :edit, :update, :destroy]
  def index
    @departmentals = Departmental.all
  end

  def new
    @departmental = Departmental.new
    render partial: "form"
  end
  def create
    @departmental = Departmental.new(departmental_params)
    if @departmental.save
      redirect_to departmentals_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    render partial: "form"
  end

  def update
    if @departmental.update(departmental_params)
      redirect_to @departmental
    else
      render :edit
    end
  end

  def destroy
    @departmental.destroy
    redirect_to departmentals_path
  end

  private
  
  def set_departmental
    @departmental = Departmental.find(params[:id])
  end
  def departmental_params
    params.require(:departmental).permit(:name)
  end
end
