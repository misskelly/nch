require "rails_helper"

RSpec.describe "Manager Dashboard Page", type: :feature do
  describe 'As a manager' do
    before :each do
      @user = User.create!(name: "Nicholas", email: "email@gmail.com", password: "test", role: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    end

    it 'I see my dashboard page' do
      visit manager_dashboard_path
      expect(page).to have_content("Manager Dashboard Page")
    end
  end
end
