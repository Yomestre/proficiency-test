class Classroom < ActiveRecord::Base
  belongs_to :course
  belongs_to :student
  validates :course_id, presence: { message: 'Curso não pode estar em branco' }
  validates :student_id, presence: { message: 'Aluno não pode estar em branco' }
end
