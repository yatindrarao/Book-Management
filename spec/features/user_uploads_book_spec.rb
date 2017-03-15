require "rails_helper"

feature "User uploads book" do
  scenario "successfully" do
    visit root_path
    create_book({
      title: "3 Musketeers",
      description: "About story of 3 friends",
      author: "Donald Johnson"
    })
    should_have_content({
      title: "3 Musketeers",
      description: "About story of 3 friends",
      author: "Donald Johnson"
    })
    create_book({
      title: "3 Idiots",
      description: "About story of collegians",
      author: "Chetan Bhagat"
    })
    should_have_content({
      title: "3 Idiots",
      description: "About story of collegians",
      author: "Chetan Bhagat"
    })
  end
end
