class Product < ActiveRecord::Base
	belongs_to :category
	mount_uploader :image, ImageUploader
	
	validates_presence_of :name,:model_no,:feature,:offer
end
