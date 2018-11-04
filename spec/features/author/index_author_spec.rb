describe 'index auther page' do

  it 'should have a table' do
    visit authors_path
    expect(page).to have_table '#authors_table'
  end

  it 'should have full names of authors' do
    @alan = FactoryBot.create :author
    @alan.save
    visit authors_path
    expect(page).to have_text @alan.name
    expect(page).to have_link @alan.homepage
  end

  it 'should have a link to add new authors' do
    visit authors_path
    expect(page).to have_link 'New', href: new_authors_path
  end

end