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
end
