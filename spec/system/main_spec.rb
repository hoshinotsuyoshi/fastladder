require 'spec_helper'

describe 'main' do
  it 'renders a new account form' do
    visit '/'
    expect(page).to have_content "Create new account"
    click_button 'Sign Up'

    # error
    expect(current_path).to eq('/members')
    expect(page).to have_content "can't be blank"

    fill_in('Username', with: 'harry')
    fill_in('Password', with: 'insecure-password')
    fill_in('Confirm Password', with: 'insecure-password')
    click_button 'Sign Up'

    # logged in
    expect(current_path).to eq('/reader/')
    expect(page).to have_content "Quick Guide"
  end
end
