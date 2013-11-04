class AddColumnFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :topic_id
    add_column :questions, :chapter_id, :integer
  end
end
