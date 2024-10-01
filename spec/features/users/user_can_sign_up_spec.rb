require "rails_helper"

RSpec.describe "User can sign up", type: :feature do
  scenario "with valid data" do
    visit "/sign-up"

    fill_in "Email", with: "test@example.com"
    click_button "Continue"

    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    # fill_in "Nickname", with: "Test User"

    click_on "Continue"

    expect(page).to have_content("Dashboard")
  end
end
