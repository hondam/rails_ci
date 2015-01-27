require 'rails_helper'

RSpec.describe Article, :type => :model do
  it "is invalid without a title" do
	  expect(Article.new(title: "hogehoge")).to be_valid
	end
end
