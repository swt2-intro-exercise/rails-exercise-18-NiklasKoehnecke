require 'rails_helper'

describe 'Edit paper page' do

  it 'should have a multiple select box' do
    @paper= FactoryBot.create :paper
    visit(edit_paper_path(@paper))
    expect(page).to have_css('select[multiple]', count:1)
  end
end