class Post < ActiveRecord::Base
	validates :title, :content, :presence => true
	validates :title, :length => { :minimum => 2 }
	validates :title, :uniqueness  => { :message => "동일한 이름의 포스트가 이미 있습니다." }
end
