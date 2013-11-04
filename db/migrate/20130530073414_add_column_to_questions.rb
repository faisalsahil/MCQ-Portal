class AddColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :type, :string
    remove_column :questions,:option_id
    add_column :questions, :marked_option_id, :integer


  end
end
