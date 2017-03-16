require "rails_helper"

feature "User views book in detail" do
  scenario "successfully" do
    visit root_path
    book_details = {
      title: "5 Musketeers",
      description: "About story of 5 friends",
      author: "Donald Johnson",
      file_name: "image_1.jpg"
    }
    create_book(book_details)
    click_on "5 Musketeers"
    book_view(book_details)
  end
end
