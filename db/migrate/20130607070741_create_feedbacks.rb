class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.integer :grade
      t.string :question
      t.string :w_answer
      t.string :c_answer
      t.string :ur_comment

      t.timestamps
    end
  end
end
