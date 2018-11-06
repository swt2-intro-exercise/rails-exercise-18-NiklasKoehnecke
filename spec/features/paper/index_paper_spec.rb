require 'rails_helper'

describe 'index paper page' do

  it 'should only show indices of a certain year when asked to' do
      paper1600 = FactoryBot.create :paper
      paper1700 = paper1600
      paper1700.year = 1700
      paper1600.save
      paper1700.save
      visit papers_path(year: "1700")
      expect(page).to_not have_text(paper1600.year)

  end
end