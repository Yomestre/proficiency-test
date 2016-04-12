require 'rails_helper'

feature 'User creates a student' do
  it 'Successfully' do
    student = build(:student)
    visit new_student_path
    fill_in 'Nome', with: student.name
    fill_in 'Numero de registro', with: student.register_number
    fill_in 'Status', with: student.status
    click_on 'Cadastrar Aluno'
    expect(page).to have_content('Aluno criado com sucesso')
    expect(page).to have_content(student.name)
    expect(page).to have_content(student.register_number)
    expect(page).to have_content(student.status)
  end

  it 'Should render new and errors when invalid data' do
    visit new_student_path
    click_on 'Cadastrar Aluno'
    expect(page).not_to have_content('Aluno criado com sucesso')
  end
end
