class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :book_name
      t.integer :grade
      t.string :file
      t.string :chapter_name

      t.timestamps
    end
  end
end
