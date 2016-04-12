require 'rails_helper'

feature 'User creates a course' do
  it 'Successfully' do
    course = build(:course)
    visit new_course_path
    fill_in 'Nome', with: course.name
    fill_in 'Descrição', with: course.description
    fill_in 'Status', with: course.status
    click_on 'Cadastrar Curso'
    expect(page).to have_content(course.name)
    expect(page).to have_content(course.description)
    expect(page).to have_content(course.status)
  end

  it 'Should render new and errors when invalid data' do
    visit new_course_path
    click_on 'Cadastrar Curso'
    expect(page).to have_content('Nome não pode estar em branco')
  end
end
