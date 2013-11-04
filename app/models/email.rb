class Email < ActiveRecord::Base
  attr_accessible :to, :from, :subject,:date,:content,:sent_id,:recv_id

end
