require 'rails_helper'

describe "visitor" do
  it "lands on page with create new idea button" do
    visit root_path

    expect(page).to have_content("Super IdeaBox")
    expect(page).to have_content("Create New Idea")
  end
end
