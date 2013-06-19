class GreContent < ActiveRecord::Base
  attr_accessible :meaning, :usage1, :usage2, :word

  validates_presence_of :word, :meaning, :usage1

end
