class AddSlug < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :slug, :string
  end
end
