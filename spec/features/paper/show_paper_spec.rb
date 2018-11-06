require 'rails_helper'

describe '' do

  before :each do
    @alan = FactoryBot.create :author
    @paper = FactoryBot.create :paper
  end

  it "should render without error" do
  end

  it "should show no authors by default" do
    visit paper_path(@paper)
    expect(page).to_not have_text(@alan.name)
  end

  it "should show the name of all authors for a paper if there are any" do
    @paper.authors << @alan
    visit paper_path(@paper)
    expect(page).to have_text(@alan.name)
  end
end