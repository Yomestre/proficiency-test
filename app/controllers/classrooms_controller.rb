class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      redirect_to course_path(@classroom.course)
      flash[:notice] = 'Matricula realizada com sucesso'
    else
      render :new
    end
  end

  private

  def classroom_params
    params.require(:classroom).permit(:student_id, :course_id)
  end
end
