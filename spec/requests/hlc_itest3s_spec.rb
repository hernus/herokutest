describe 'Menu' do
  describe "The Menu Page" do
    it "should have the phrase 'Menu Item 9'" do
      visit '/menus/menu1'
      page.should have_content 'Menu Item 9'
    end
  end
end
