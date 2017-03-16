require "rails_helper"

feature "User views book in detail" do
  scenario "successfully" do
    visit root_path
    create_book({
      title: "5 Musketeers",
      description: "About story of 5 friends",
      author: "Donald Johnson",
      file_name: "image_1.jpg"
    })
    click_on "5 Musketeers"

    expect(page).to have_content("5 Musketeers")
    expect(page).to have_content("About story of 5 friends")
    expect(page).to have_content("Donald Johnson")
  end
end
