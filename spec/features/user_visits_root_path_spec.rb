require 'rails_helper'

feature 'User visits root path' do
  it 'Successfully' do
    visit root_path
    expect(page).to have_content('Bem-vindo')
  end
end
