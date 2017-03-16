require  "rails_helper"

feature "User updates book" do
  scenario "successfully" do
    visit root_path
    book_details = {
      title: "3 Idiots",
      description: "About story of collegians",
      author: "Chetan Bhagat",
      file_name: "image_2.jpg"
    }
    create_book(book_details)
    click_on "3 Idiots"
    click_on "Update"
    display_form(book_details)

    new_details = {
      title: "4 Idiots",
      description: "About story of students in the school",
      author: "Chetan Meghwal",
      file_name: "image_1.jpg"
    }
    fill_details(new_details)
    click_on "Confirm"
    book_view(new_details)
  end
end
