class Post < ActiveRecord::Base
	belongs_to :topic
attr_accessible :body, :title
	
	has_many :comments

validates_presence_of :body, :title
end
