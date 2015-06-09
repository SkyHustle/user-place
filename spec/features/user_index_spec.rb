require 'rails_helper'

describe "the user index page", type: :feature do
  it "shows all the users on index page" do
    babs = User.create(name: 'Babs')
    visit users_path
    expect(page).to have_content(babs.name)
    expect(page).to_not have_content("babby cakes")
  end

  it 'adds a new user' do
    visit users_path
    page.click_on('add new user')
    
    page.fill_in('user[name]', with: "Bambee")
    page.click_on('submit')

    expect(page).to have_content('Bambee')
  end

  it "deletes a user" do
    babs = User.create(name: 'Babs')

    visit users_path
    page.click_on('delete user')

    expect(page).to_not have_content(babs.name)
  end

  it "edits existing user" do
    babs = User.create(name: 'Babs')

    visit users_path
    expect(page).to have_content('Babs')
    page.click_on('edit user')
    
    page.fill_in('user[name]', with: 'Babalicious')
    page.click_on('update')

    expect(page).to have_content('Babalicious')
  end

end