require 'rails_helper'

describe 'index auther page' do

  it 'should have a table' do
    visit authors_path
    expect(page).to have_table
  end

  it 'should have full names and emails of authors' do
    @temp_authors = Author.all
    visit authors_path
    @temp_authors.each do |author|
      expect(page).to have_text author.name
      expect(page).to have_link author.homepage
      expect(page).to have_link link_to 'Show', author_path(author)
    end
  end

  it 'should have a link to add new authors' do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

end