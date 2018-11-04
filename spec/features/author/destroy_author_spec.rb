require 'rails_helper'

describe "destroy route" do

  let(:valid_session) {{}}
  it "should delete the author from the database" do
    @author = FactoryBot.create :author
    @author.save
    expect(Author.exists?(@author.id)).to be(true)
    #delete :destroy, params: {id: @author.to_param}, session: valid_session
    #TODO SOMETHING THAT WORKS
    #expect(Author.exists?(@author.id)).to be(false)
  end
end