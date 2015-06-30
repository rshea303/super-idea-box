require 'rails_helper'

describe "visitor" do
  it "lands on page with create new idea button" do
    visit root_path

    expect(page).to have_content("Super IdeaBox")
    expect(page).to have_content("Create New Idea")
  end

  it "can create a new idea" do
    visit root_path

    click_on("Create New Idea")

    expect(page).to have_content("Title")
  end

  it "can create a new idea" do
    visit root_path
    click_on("Create New Idea")

    expect(page).to have_content("Title")
    fill_in "idea[title]", with: "buy coke"
    fill_in "idea[description]", with: "for thirst"
    click_on("Submit New Idea")

    within(".idea-list") do
      save_and_open_page
      expect(page).to have_content("buy coke")
    end
  end

end
