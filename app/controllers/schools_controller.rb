class SchoolsController < ApplicationController

  before_action :set_school, only: [:show, :edit, :update, :destroy]
  
  def index
    @schools = School.all
  end

  def show
    # before_action
  end

  def new
    @school = School.new
  end

  def edit
    # before_action
  end

  def create
    @school = School.new(school_params)

    if @school.save
      redirect_to @school, notice: "School is created"
    else
      render :new
    end
  end

  def update
    # before_action
    if @school.update(school_params)
      redirect_to @school, notice: "School is updated"
    else
      render :edit
    end
  end

  def destroy
    # before_action
    @school.destroy
    redirect_to @school
  end
    

  private

  def set_school
    @school = School.find(params[:id])
  end

  def school_params
    params.require(:school).permit(:name, :address, :principal, :capacity, :private_school)
  end

    # Use callbacks to share common setup or constraints between actions.

    # Only allow a trusted parameter "white list" through.

end
