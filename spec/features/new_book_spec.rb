require 'rails_helper'

describe "add a new book process" do
  it "adds a new book to the list" do
    visit '/'
    click_link 'New Book'
    fill_in 'Title', :with => 'Oh The Places You Will Go'
    fill_in 'Author', :with => 'Fred'
    click_on 'Create Book'
    expect(page).to have_content 'Oh The Places You Will Go'
  end

  it "allows edit of a book" do
    new_book = FactoryBot.create(:book)
    visit edit_book_path(new_book)
    fill_in 'Title', :with => 'Learn How To Code'
    fill_in 'Author', :with => 'Michael Nyman'
    click_on 'Update Book'
    expect(page).to have_content 'Learn How To Code'
  end

  it "allows adding a review" do
    new_book = FactoryBot.create(:book)
    visit new_book_review_path(new_book)
    fill_in 'Username', :with => 'Michael Nyman'
    fill_in 'Text', :with => 'Best book ever!'
    fill_in 'Rating', :with => 10
    click_on 'Create Review'
    expect(page).to have_content 'Michael Nyman'
  end

  it "allows redirect to index page from book show page" do
    new_book = FactoryBot.create(:book)
    visit book_path(new_book)
    click_on 'Return to books'
    expect(page).to have_content 'Alphabetize'
  end
end
