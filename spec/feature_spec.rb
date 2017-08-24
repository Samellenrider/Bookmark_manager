feature "viewing list of links" do

  before(:each) do
   #DatabaseCleaner.start
 end

  scenario "when we open book-mark-manager we see the list" do
    visit('/links')
    click_button('Add New Link')
    fill_in 'title', with: "Facebook"
    fill_in 'url', with: "http://www.facebook.com"
    click_button('Add Link')
    expect(page).to have_content("http://www.facebook.com")
    within "ul#links" do
      expect(page).to have_content "Facebook"
    end

  end
  after(:each) do
    #DatabaseCleaner.clean
  end
end
