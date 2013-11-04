class AddIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :chapter_id, :integer
  end
end
