require "rails_helper"

RSpec.describe "User can Login", type: :feature do
  describe "As a visitor, when I visit the login path" do
    context "I see a field to enter my email address and password" do
      it "If I am a Sales User, I am redirected to my dashboard page" do
        user = User.create!(name: "Sam", email: "email@gmail.com", password: "test", role: 0)

        visit login_path

        fill_in "User Name", with: "email@gmail.com"
        fill_in "Password", with: "test"

        click_button "Login"

        expect(current_path).to eq(user_dashboard_path)
        expect(page).to have_content("Sales Dashboard Page")
      end

      it "If I am a Manager User, I am redirected to my dashboard page" do
        user = User.create!(name: "Sam", email: "email@gmail.com", password: "test", role: 1)

        visit login_path

        fill_in "User Name", with: "email@gmail.com"
        fill_in "Password", with: "test"

        click_button "Login"

        expect(current_path).to eq(manager_dashboard_path)
        expect(page).to have_content("Manager Dashboard Page")
      end

      it "If I am an Admin User, I am redirected to my dashboard page" do
        user = User.create!(name: "Sam", email: "email@gmail.com", password: "test", role: 2)

        visit login_path

        fill_in "User Name", with: "email@gmail.com"
        fill_in "Password", with: "test"

        click_button "Login"

        expect(current_path).to eq(admin_dashboard_path)
        expect(page).to have_content("Admin Dashboard Page")
      end
    end
  end
end
