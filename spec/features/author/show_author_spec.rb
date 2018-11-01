require 'rails_helper'

describe "show author page", type: :feature do

  it "should render withour error" do
    visit authors_path(@alan)
  end

  it "should show the name of the author" do
    visit authors_path(@alan)
    expect(page).to have_text(@alan.first_name)
    expect(page).to have_text(@alan.last_name)
    expect(page).to have_text(@alan.homepage)
  end
end
