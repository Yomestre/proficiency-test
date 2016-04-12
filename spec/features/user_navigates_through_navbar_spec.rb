require 'rails_helper'

feature 'User navigates through navbar' do
  it 'Navigates to root_path' do
    visit students_path
    within('nav') do
      click_on 'ProficiencyTest'
    end
    expect(current_path).to eq(root_path)
    expect(page).to have_css :h1, text: 'Bem-vindo'
  end
  it 'Navigates to new student' do
    visit root_path
    within('.nav') do
      click_on 'Cadastrar novo aluno'
    end
    expect(current_path).to eq(new_student_path)
    expect(page).to have_css :h1, text: 'Novo aluno'
  end

  it 'Navigates to student list' do
    visit root_path
    within('.nav') do
      click_on 'Lista de alunos'
    end
    expect(current_path).to eq(students_path)
    expect(page).to have_css :h1, text: 'Lista de alunos'
  end

  it 'Navigates to new course' do
    visit root_path
    within('.nav') do
      click_on 'Cadastrar novo curso'
    end
    expect(current_path).to eq(new_course_path)
    expect(page).to have_css :h1, text: 'Novo curso'
  end

  it 'Navigates to course list' do
    visit root_path
    within('.nav') do
      click_on 'Lista de cursos'
    end
    expect(current_path).to eq(courses_path)
    expect(page).to have_css :h1, text: 'Lista de cursos'
  end

  it 'Navigates to new classroom' do
    visit root_path
    within('.nav') do
      click_on 'Nova matricula'
    end
    expect(current_path).to eq(new_classroom_path)
    expect(page).to have_css :h1, text: 'Nova matricula'
  end
end
