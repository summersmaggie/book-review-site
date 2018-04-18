class Review < ActiveRecord::Base
  validates :username, :presence => true
  validates :text, :presence => true
  belongs_to :book
end
