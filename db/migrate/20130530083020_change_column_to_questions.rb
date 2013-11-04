class ChangeColumnToQuestions < ActiveRecord::Migration

  def change
    remove_column :questions,:type
    add_column :questions, :q_type, :string

  end


end
