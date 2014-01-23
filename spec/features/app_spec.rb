require "spec_helper"

describe "The App", type: :feature, js: true do

  it "has a heading" do
    visit root_path
    expect(page.find("h1")).to have_content("Your Greeting:")
  end

  it "has a greeting" do
    visit root_path
    expect(page).to have_css("#greeting")
  end
end
