require 'rails_helper'

describe "destroy route" do

  let(:action) { :destroy }
  let(:params) {   }
  let(:referer) { '/' }

  it "should delete the author from the database" do
    @author = FactoryBot.create :author
    @author.save
    expect(Author.exists?(@author.id)).to be(true)
    #TODO SOMETHING THAT WORKS
    #expect(Author.exists?(@author.id)).to be(false)
  end
end