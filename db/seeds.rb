# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Laptops","Graphics Card"].each do |t|
	product_name = t
	Category.create!(:name=>product_name)
end

["xps-12|1|1500|public/uploads/product/image/1/image3.jpeg|true|true"].each do |t|
	name,category_id,model_no,image,feature,offer = t.chomp.split("|")
	Product.create!(:name=>name,:category_id=>category_id,:model_no=>model_no,:image=>File.open(image,'rb'),:feature=>feature,:offer=>offer)
end
