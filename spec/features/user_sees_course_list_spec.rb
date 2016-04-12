require 'rails_helper'

feature 'User sees course list' do
  it 'Successfully' do
    course = create(:course)
    course2 = create(:course, name: 'Curabitur tempor aliquam')
    visit courses_path
    expect(page).to have_content(course.name)
    expect(page).to have_content(course2.name)
  end

  it 'Course name should be a link' do
    course = create(:course)
    visit courses_path
    click_on course.name
    expect(current_path).to eq(course_path(course))
  end
end
