class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :username, :string
      t.column :text, :string
      t.column :rating, :integer
      t.column :book_id, :integer

      t.timestamps
    end
  end
end
