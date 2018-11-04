require 'rails_helper'

describe 'index auther page' do

  before :each do
    visit authors_path
  end

  it 'should have a table' do
    expect(page).to have_table
  end

  it 'should have all information about the authors' do
    @temp = FactoryBot.create :author
    @temp.save
    visit authors_path
    @temp_authors = Author.all
    @temp_authors.each do |author|
      expect(page).to have_text author.name
      expect(page).to have_text author.homepage
      expect(page).to have_link 'Show', href: author_path(author)
      expect(page).to have_link 'Edit', href: edit_author_path(author)
      expect(page).to have_selector "a[data-method='delete'][href='"+authors_path(author)+"']"
    end
  end

  it 'should have a link to add new authors' do
    expect(page).to have_link 'New', href: new_author_path
  end

end