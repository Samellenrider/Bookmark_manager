feature "viewing list of links" do


  Link.create(:title => "Google", :url => "https://www.google.co.uk")



  scenario "when we open book-mark-manager we see the list" do
    visit("/links")
    expect(page).to have_content("https://www.google.co.uk")
    within "ul#links" do
      expect(page).to have_content "Google"
    end
  end
end
