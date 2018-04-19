require 'rails_helper'

describe "add a new book process" do
  it "adds a new book to the list" do
    visit '/'
    click_link 'New Book'
    fill_in 'Title', :with => 'Learn How To Program'
    fill_in 'Author', :with => 'Michael Nyman'
    click_on 'Create Book'
    expect(page).to have_content 'Learn How To Program'
  end

  it "allows edit of a book" do
    new_book = Book.create(title: 'Learn How To Program',
                            published: 2012,
                            author: 'Michael Nyman')
    visit edit_book_path(new_book)
    fill_in 'Title', :with => 'Learn How To Code'
    fill_in 'Author', :with => 'Michael Nyman'
    click_on 'Update Book'
    expect(page).to have_content 'Learn How To Code'
  end
end
