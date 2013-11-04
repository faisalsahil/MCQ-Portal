class AddColumnToChapter < ActiveRecord::Migration
  def change
    remove_column :chapters, :subject_id
    add_column :chapters, :book_id, :integer
  end
end
