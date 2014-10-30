require 'rails_helper'

feature "User Registration" do

  scenario "user can visit the root page and see links to sign in or register." do
    visit root_path
    expect(page).to have_link('Register')
    click_link 'Register'
    expect(current_path).to eq(new_user_path)
    expect(page).to have_content("Register Your Metacog Account")
    #add testing for sign-in forms on welcome page

end

scenario "user can register on registration page or go back to welcome page" do
  visit new_user_path
  expect(page).to have_link("Back to Welcome")
  click_link "Back to Welcome"
  expect(current_path).to eq(root_path)

end
#   scenario 'with valid email and password' do
#     sign_up_with 'valid@example.com', 'password'

#     expect(page).to have_button('Sign out')
#   end

#   scenario 'with invalid email' do
#     sign_up_with 'invalid_email', 'password'

#     expect(page).to have_content('Sign in')
#   end

#   scenario 'with blank password' do
#     sign_up_with 'valid@example.com', ''

#     expect(page).to have_content('Sign in')
#   end

# def sign_up_with(email, password)
#     visit sign_up_path
#     fill_in 'Email', with: email
#     fill_in 'Password', with: password
#     click_button 'Sign up'
#   end

end
