class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_authors
      t.string :book_title
      t.string :book_edition
      t.string :book_yearpublished
      t.string :book_isbn13
      t.string :book_apponlist
      t.string :book_department
      t.string :book_coursetitle
      t.string :book_coursenumber
      t.string :book_professor
      t.string :book_description

      t.timestamps null: false
    end
  end
end
