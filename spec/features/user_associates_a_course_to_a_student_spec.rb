require 'rails_helper'

feature 'User associates a course to a student' do
  it 'Successfully' do
    student = create(:student)
    course = create(:course)
    visit new_classroom_path
    select student.name, from: 'Aluno'
    select course.name, from: 'Curso'
    click_on 'Cadastrar Matricula'
    expect(current_path).to eq(course_path(course))
    expect(page).to have_content('Matricula realizada com sucesso')
    expect(page).to have_content(student.name)
    expect(page).to have_content(course.name)
    expect(page).to have_content(Classroom.last.created_at)
  end

  it 'Should render new and errors when invalid data' do
    create(:student)
    course = create(:course)
    visit new_classroom_path
    click_on 'Cadastrar Matricula'
    expect(current_path).not_to eq(course_path(course))
  end
end
