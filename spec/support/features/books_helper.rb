module Features
  def create_book(book_details)
    click_on "Upload a book"
    fill_in 'Title', with: book_details[:title]
    fill_in "Description", with: book_details[:description]
    fill_in "Author", with: book_details[:author]
    attach_file "Image", Rails.root.join('spec', 'fixtures', 'files', book_details[:file_name])
    click_button "Upload Book"
  end

  def should_have_content(book_details)
    expect(page).to have_css "li p.title", text: book_details[:title]
    expect(page).to have_css "li p.desc", text: book_details[:description]
    expect(page).to have_css "li p.author", text: book_details[:author]
  end

  def display_form(book_details)
    expect(find_field("Title").value).to eq book_details[:title]
    expect(find_field("Author").value).to eq book_details[:author]
    expect(find_field("Description").value).to eq book_details[:description]
  end

  def fill_details(book_details)
    fill_in 'Title', with: book_details[:title]
    fill_in "Description", with: book_details[:description]
    fill_in "Author", with: book_details[:author]
    attach_file "Image", Rails.root.join('spec', 'fixtures', 'files', book_details[:file_name])
  end

  def book_view(book_details)
    expect(page).to have_css "h3", text: book_details[:title]
    expect(page).to have_css "h4", text: book_details[:author]
    expect(page).to have_css "p", text: book_details[:description]
  end
end
