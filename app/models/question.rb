class Question < ActiveRecord::Base
  attr_accessible :name, :chapter_id, :marked_option_id, :q_type, :shortanswer

  #belongs_to :topic
  belongs_to :chapter
  has_many :options
  has_one :answer
  belongs_to :marked_option, :class_name=>'Option'
end
