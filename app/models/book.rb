class Book < ActiveRecord::Base
  validates :title, :presence => true
  validates :author, :presence => true
  has_many :reviews
  before_save :update_slug

  def update_slug
    self.slug = self.title.downcase.gsub(" ", "-")
  end

  def to_param
    slug
  end

  def self.since(year)
    where(published: year..2018)
  end

  # def self.search(query)
  #   where(title: query)
  # end

  def self.alphabetize
    self.order('title ASC')
  end

  def self.year
    self.order('published ASC')
  end
end
