require 'rails_helper'

feature 'User creates a course' do
  it 'Successfully' do
    course = build(:course)
    visit new_course_path
    fill_in 'Nome', with: course.name
    fill_in 'Descrição', with: course.description
    fill_in 'Status', with: course.status
    click_on 'Cadastrar Curso'
    expect(page).to have_content('Curso criado com sucesso')
    expect(page).to have_content(course.name)
    expect(page).to have_content(course.description)
    expect(page).to have_content(course.status)
  end

  it 'Should render new and errors when invalid data' do
    visit new_course_path
    click_on 'Cadastrar Curso'
    expect(page).not_to have_content('Curso criado com sucesso')
  end
end
