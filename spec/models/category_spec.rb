require 'spec_helper'

describe Category do

	it "must have a category name" do
		a = Category.new
		a.should_not be_valid
		a.errors[:name].should_not be_blank
	end
	it "can have many products" do
    g = Category.reflect_on_association(:products)
    g.macro.should == :has_many
	end
end
