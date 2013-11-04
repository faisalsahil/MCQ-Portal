class AddAndRemoveToFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :grade
    remove_column :feedbacks, :w_answer
    remove_column :feedbacks, :c_answer
    remove_column :feedbacks, :question
    add_column :feedbacks, :mobile, :integer
    add_column :feedbacks, :grade, :integer
    add_column :feedbacks, :gender, :string
    add_column :feedbacks, :status, :string


  end
end
