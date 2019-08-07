require "rails_helper"

RSpec.describe "User Dashboard Page", type: :feature do
  describe 'As a user' do
    before :each do
      @user = User.create!(name: "Kelly", email: "email@gmail.com", password: "test", role: 0)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    end

    it 'I see my dashboard page' do
      visit user_dashboard_path
      expect(page).to have_content("Sales Dashboard Page")
    end
  end
end
