require "rails_helper"

RSpec.describe "User can Login", type: :feature do
  describe "As a Sales User, I can logout" do
    context "I see a button to logout" do
      it "If I am a Sales User, I am redirected to the home page" do
        user = User.create!(name: "Sam", email: "email@gmail.com", password: "test", role: 0)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        visit user_dashboard_path
        expect(page).to have_content("Logout")

        click_link "Logout"

        expect(current_path).to eq(home_path)
        expect(page).to have_content("Welcome Page")
      end
      it "If I am a Manager User, I am redirected to the home page" do
        user = User.create!(name: "Sam", email: "email@gmail.com", password: "test", role: 1)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        visit manager_dashboard_path
        expect(page).to have_content("Logout")

        click_link "Logout"

        expect(current_path).to eq(home_path)
        expect(page).to have_content("Welcome Page")
      end
      it "If I am an Admin User, I am redirected to the home page" do
        user = User.create!(name: "Sam", email: "email@gmail.com", password: "test", role: 2)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        visit admin_dashboard_path
        expect(page).to have_content("Logout")

        click_link "Logout"

        expect(current_path).to eq(home_path)
        expect(page).to have_content("Welcome Page")
      end
    end
  end
end
