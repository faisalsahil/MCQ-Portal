class Feedback < ActiveRecord::Base
  attr_accessible :mobile, :grade, :name, :gender, :ur_comment, :status
end
