require 'rails_helper'

describe 'the edit a list process' do
  it 'edits a new list' do
    visit lists_path
    click_on 'Add a new list'
    fill_in 'Name', :with => 'Vodka'
    click_on 'Create List'
    click_on 'Vodka'
    click_on 'Edit'
    fill_in 'Name', :with => 'Whiskey'
    click_on 'Update List'
    expect(page).to have_content 'Whiskey'
  end
end
