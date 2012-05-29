require 'spec_helper'

describe "User login model" do
	it "should have a unique user name" do
		User.create!(:email=>"shobhab_stha@hotmail.com",:password=>"shrestha")
		a = User.new(:email=>"shobhab_stha@hotmail.com",:password=>"shresthas").should_not be_valid
	end
	
	it "should must have a password" do
		a =User.new(:email=>"shobhabsthas@hotmail.com")
		a.should_not be_valid
	end
	
	it "should have password of length more than 6 character" do
		a =User.new(:email=>"shobhab_sthas@hotmail.com",:password=>"shre")
		a.should_not be_valid
	end
end
