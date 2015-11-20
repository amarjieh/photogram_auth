class Like < ActiveRecord::Base
	  belongs_to :user
	  belongs_to :photo
	  validates :user_id, :presence => true, :uniquness => { :scope => :photo_id }
	  validates :photo_id, :presence => true
end
