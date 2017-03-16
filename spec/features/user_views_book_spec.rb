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

    expect(page).to have_css "h3", text: "5 Musketeers"
    expect(page).to have_css "h4", text: "Donald Johnson"
    expect(page).to have_css "p", text: "About story of 5 friends"
  end
end
