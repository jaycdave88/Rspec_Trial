require 'rails_helper'


feature 'Welcome page' do
  scenario "User goes to root page" do
    visit root_path
    expect(page).to have_content 'Hello World'
  end
end

feature 'Sign Up' do
  scenario "User can see sign up link" do
    visit root_path
    expect(page).to have_content 'Sign Up'
  end
end

feature 'Log In' do
  scenario "User can see the log in link" do
    visit root_path
    expect(page).to have_content 'Log In'
  end
end

feature 'User Can Sign Up' do
  scenario "User can fill in information to sign up" do
    contact = create(:contact)
    visit '/'

    click_link 'Sign Up'
    fill_in 'Email', with: contact.email
    fill_in 'First Name', with: contact.first_name
    fill_in 'Last Name', with: contact.last_name
    click_button 'Sign Up'

  end
end
