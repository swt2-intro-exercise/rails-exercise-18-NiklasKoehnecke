require 'rails_helper'

RSpec.describe Author, type: :model do

  it "should be able to create Authors with first&last name and homepage" do
    first_name = "Alan"
    last_name = "Turing"
    homepage = "http://wikipedia.org/Alan_Turing"
    author = Author.new(first_name, last_name, homepage)
    expect(author.first_name).to eq(first_name)
    expect(author.last_name).to eq(last_name)
    expect(author.homepage).to eq(homepage)
  end
end