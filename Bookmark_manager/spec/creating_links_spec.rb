feature 'adding links' do

  scenario 'link gets added to list' do
    visit('/links')
    click_button('Submit')
    fill_in 'URL', with: "name"
    fill_in 'URL', with: "http://www.facebook.com"
    expect(page).to have_content("http://www.facebook.com")
  end
end
