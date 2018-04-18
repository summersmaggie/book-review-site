Book.destroy_all
Review.destroy_all

50.times do
  tempBook = Book.create!(title: Faker::Book.title,
                        published: (1900 + Random.rand(118)),
                        author: Faker::Book.author)

    (Random.rand(20)).times do
      Review.create!(username: Faker::Lorem.word,
      text: Faker::Lorem.sentence,
      rating: (1 + Random.rand(10)),
      book_id: tempBook.id)
    end

end
