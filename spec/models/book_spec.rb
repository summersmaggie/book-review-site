require 'rails_helper'

describe Book do
  it { should validate_presence_of :title }
  it { should validate_presence_of :author }
  it { should have_many :reviews }

  it 'will create a book with specified title' do
    book = FactoryBot.create(:book)
    book.title.should eq 'Oh The Places You Will Go'
  end
end
