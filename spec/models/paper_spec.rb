require 'rails_helper'

RSpec.describe Paper, type: :model do

  before :each do
    @paper = FactoryBot.create :paper
  end

  describe "missing values" do
    it "should not accept papers with missing title" do
      @paper.title=nil
      expect(@paper).to_not be_valid
    end

    it "should not accept papers with missing venue" do
      @paper.venue=nil
      expect(@paper).to_not be_valid
    end

    it "should not accept papers with invalid name" do
      @paper.year=nil
      expect(@paper).to_not be_valid
      @paper.year="a"
      expect(@paper).to_not be_valid
    end
  end

end
