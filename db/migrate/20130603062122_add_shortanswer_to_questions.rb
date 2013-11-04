class AddShortanswerToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :shortanswer, :string
  end
end
