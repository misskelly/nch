require "rails_helper"

RSpec.describe "Admin Dashboard Page", type: :feature do
  describe 'As an admin' do
    before :each do
      @user = User.create!(name: "Becca", email: "email@gmail.com", password: "test", role: 2)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    end

    it 'I see my dashboard page' do
      visit admin_dashboard_path
      expect(page).to have_content("Admin Dashboard Page")
    end

    it "index page" do
      visit admin_data_path
      save_and_open_page
    end
  end
end
