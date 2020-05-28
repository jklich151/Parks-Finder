require 'rails_helper'

RSpec.describe "As a User" do
  it "I can search for parks by state" do

    visit "/"

    select "Tennessee", :from => "state"

    click_on "Find Parks"

    expect(page).to have_content("16 Parks")

    within (first(".park-info")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".description")
      expect(page).to have_css(".directionsInfo")
      expect(page).to have_css(".standardHours")
    end
  end
end

# As a user,
# When I select "Tennessee" from the form,
# (Note: use the existing form)
# And click on "Find Parks",
# I see the total of parks found,
# And for each park I see:
# - full name of the park
# - description
# - direction info
# - standard hours for operation
