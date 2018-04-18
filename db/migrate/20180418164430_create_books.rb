class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|

      t.column :title, :string
      t.column :published, :integer
      t.column :author, :string
    end
  end
end
