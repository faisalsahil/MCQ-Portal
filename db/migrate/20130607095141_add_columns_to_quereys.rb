class AddColumnsToQuereys < ActiveRecord::Migration
  def change
    add_column :quereys, :grade, :integer
    add_column :quereys, :question, :string
    add_column :quereys, :curr_ans, :string
    add_column :quereys, :sugg_ans, :string
    add_column :quereys, :reason, :string

  end
end
