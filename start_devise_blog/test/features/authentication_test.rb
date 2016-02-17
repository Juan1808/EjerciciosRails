require "test_helper"

class AuthenticationTest < Capybara::Rails::TestCase
  test "a registered_user_can_log_in" do
    user = User.create email: 'exmple@example.com', password: '12345678'
    visit root_path
    
    assert_content page, 'Log in'
    
    click_link 'Log In'
    
    within '#new_user' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      
      click_button 'Sign in'
    end
    assert_content page, 'Log Out'
  end
end 
