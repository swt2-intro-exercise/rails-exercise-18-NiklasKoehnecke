require 'rails_helper'

describe "show author page", type: :feature do

  it "should render withour error" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
  end

  it "should show the name of the author" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text(@alan.first_name)
    expect(page).to have_text(@alan.last_name)
    expect(page).to have_text(@alan.homepage)
  end
end
