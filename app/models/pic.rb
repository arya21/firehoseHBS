class Pic < ActiveRecord::Base

	mount_uploader :image, ImageUploader

	#validate
	#validates :image, :presence => true
	#validates :emotion, :presence => true
	#validates :learned, :presence => true
	#validates :lesson, :presence => true

end
