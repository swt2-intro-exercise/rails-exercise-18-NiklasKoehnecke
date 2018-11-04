require 'rails_helper'

RSpec.describe Author, type: :model do

  before :each do
    @author = FactoryBot.create :author
  end

  it "should always have a list of papers" do
    @author.save
    db_author = Author.find(@author.id)
    expect(db_author.papers.empty?).to be(true)
  end

  it "should not accept authors without last names" do
    @author.last_name=nil
    expect(@author).to_not be_valid
  end

  it "should not accept authors with empty last names" do
    @author.last_name=""
    expect(@author).to_not be_valid
  end

  it "should accept valid authors" do
    expect(@author).to be_valid
  end

  it "should be able to create Authors with first&last name and homepage" do
    author = Author.new(first_name:@author.first_name, last_name:@author.last_name, homepage:@author.homepage)
    expect(author.first_name).to eq(@author.first_name)
    expect(author.last_name).to eq(@author.last_name)
    expect(author.homepage).to eq(@author.homepage)
  end

  it "should be able to return the full name of an author" do
    author = Author.new(first_name:@author.first_name, last_name:@author.last_name, homepage:@author.homepage)
    expect(author.name()).to eq(@author.first_name + " " + @author.last_name)
  end


end
