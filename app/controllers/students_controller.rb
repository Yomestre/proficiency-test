class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to action: :index
      flash[:notice] = 'Aluno criado com sucesso'
    else
      render :new
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :register_number, :status)
  end
end
