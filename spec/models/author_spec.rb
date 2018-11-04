require 'rails_helper'

RSpec.describe Author, type: :model do

  it "should not accept authors without last names" do
    @author = FactoryBot.create :author
    @author.last_name=nil
    expect(@author).to_not be_valid
  end

  it "should not accept authors with empty last names" do
    @author = FactoryBot.create :author
    @author.last_name=""
    expect(@author).to_not be_valid
  end

  it "should accept valid authors" do
    @author = FactoryBot.create :author
    expect(@author).to be_valid
  end

  it "should be able to create Authors with first&last name and homepage" do
    first_name = "Alan"
    last_name = "Turing"
    homepage = "http://wikipedia.org/Alan_Turing"
    author = Author.new(first_name:first_name, last_name:last_name, homepage:homepage)
    expect(author.first_name).to eq(first_name)
    expect(author.last_name).to eq(last_name)
    expect(author.homepage).to eq(homepage)
  end

  it "should be able to return the full name of an author" do
    first_name = "Alan"
    last_name = "Turing"
    homepage = "http://wikipedia.org/Alan_Turing"
    author = Author.new(first_name:first_name, last_name:last_name, homepage:homepage)
    expect(author.name()).to eq(first_name + " " + last_name)
  end


end
