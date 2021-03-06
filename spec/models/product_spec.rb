require 'spec_helper'

describe Product do
  it "has a valid factory" do
  	FactoryGirl.create(:product).should be_valid
  end

  it "is invalid without a firstname"
  it "is invalid without a lastname"
  it "returns a contact's full name as a string"
end