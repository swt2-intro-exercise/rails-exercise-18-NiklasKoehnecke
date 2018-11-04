require 'rails_helper'

describe "edit author page" do
  before :each do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
  end

  it "should render without error" do
  end

  it "should display the same information as the new page" do
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should update the database when submitted" do
    fill_in 'author[first_name]', with: "Alan"
    fill_in 'author[last_name]', with: "Mathison"
    find('input[name="commit"]').click
    @alan.reload
    expect(@alan.name).to eq("Alan Mathison")
  end
end