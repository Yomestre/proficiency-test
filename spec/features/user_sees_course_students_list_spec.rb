require 'rails_helper'

feature 'User sees course students list' do
  it 'Successfully' do
    student = create(:student, name: 'Curabitur Eget Turpis')
    classroom = create(:classroom)
    create(:classroom, course: classroom.course, student: student)
    visit course_path(classroom.course)
    expect(page).to have_content(student.name)
    expect(page).to have_content(classroom.student.name)
  end
end
