feature "viewing list of links" do

  before(:each) do
   DatabaseCleaner.start
 end

  scenario "when we open book-mark-manager we see the list" do
    visit("/links")
    expect(page).to have_content("https://www.google.co.uk")
    within "ul#links" do
      expect(page).to have_content "Google"
    end

  end
  after(:each) do
    DatabaseCleaner.clean
  end
end
