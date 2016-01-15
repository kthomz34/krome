class Lesson < ActiveRecord::Base
	belongs_to :section
	mount_uploader :video, VideoUploader
	
	include RankedModel
	ranks :row_order, :width_same => :section_id
end
