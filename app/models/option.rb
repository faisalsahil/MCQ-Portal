class Option < ActiveRecord::Base
  attr_accessible :mcq, :question_id

  belongs_to :question
  has_one :swaal, :class_name=>'Question', :foreign_key=>'marked_option_id'
end
