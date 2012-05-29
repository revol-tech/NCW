require "spec_helper"

describe Product do
	it "must have a product name" do
		a=Product.new()
		a.should_not be_valid
	end
	
	it "must have a product model no. " do
		a = Product.new()
		a.should_not be_valid
	end
	
	it "must have a feature true or false " do
		a = Product.new()
		a.should_not be_valid
	end
	
	it "must have a offer true or false " do
		a = Product.new()
		a.should_not be_valid
	end
	
	it "should have only on category" do
		g = Product.reflect_on_association(:category)
		g.macro.should == :belongs_to
	end
end
