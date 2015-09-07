require 'rails_helper'

describe "the add a list process" do
  it "adds a new list" do
    visit lists_path
    click_on 'Add list'
  end
end
