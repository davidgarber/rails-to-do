require 'rails_helper'

describe "the add a list process" do
  it "adds a new list" do
    visit lists_path
    click_on 'Add a new list'
    fill_in 'Name', :with => "School work"
    click_on 'Create List'
    expect(page).to have_content 'Lists'
  end
end
