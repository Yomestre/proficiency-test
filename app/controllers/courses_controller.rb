class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to action: :index
      flash[:notice] = 'Curso criado com sucesso'
    else
      render 'new'
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :status)
  end
end
