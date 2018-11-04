require 'rails_helper'

describe "edit author page" do
  before :each do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
  end

  it "should render without error" do
  end

  it "should display the same information as the show page" do
    expect(page).to have_text(@alan.first_name)
    expect(page).to have_text(@alan.last_name)
    expect(page).to have_text(@alan.homepage)
  end
end