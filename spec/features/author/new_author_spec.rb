require 'rails_helper'

describe "New author page", type: :feature do

  before :each do
    visit new_author_path
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    # these are the standard names given to inputs by the form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should throw errors when saving invalid authors" do
    find('input[name="commit"]').click
    expect(page).to have_selector("div#error_explanation")
  end
end
