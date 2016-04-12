require 'rails_helper'

describe Classroom do
  it { is_expected.to belong_to :student }
  it { is_expected.to belong_to :course }
  it do
    is_expected.to validate_presence_of(:student_id)
      .with_message('Aluno não pode estar em branco')
  end

  it do
    is_expected.to validate_presence_of(:course_id)
      .with_message('Curso não pode estar em branco')
  end
end
