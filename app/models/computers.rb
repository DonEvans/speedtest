class Computers < ActiveRecord::Base
validates_presence_of :userName, :browser, :category, :time, :userAgentString
validates_numericality_of :time
validates_length_of :description, :maximum => 126
validates_length_of :userName, :browser, :category, :time, :maximum => 60
end
