class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :name
      t.text :image
      t.text :author
      t.date :published
      t.integer :pages
      t.text :language

      t.timestamps
    end
  end
end
