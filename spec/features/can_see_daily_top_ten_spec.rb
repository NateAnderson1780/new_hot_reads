require "rails_helper"

RSpec.describe "can see top ten on index page", :type => :feature do
  
  scenario "user see top ten hot reads" do
    12.times { Read.create(title: "espn", url: "espn.com") }
    11.times { Read.create(title: "nba", url: "nba.com") }
    10.times { Read.create(title: "cnn", url: "cnn.com") }
    9.times { Read.create(title: "google", url: "google.com") }
    8.times { Read.create(title: "reddit", url: "reddit.com") }
    7.times { Read.create(title: "twitter", url: "twitter.com") }
    6.times { Read.create(title: "ringer", url: "ringer.com") }
    5.times { Read.create(title: "yahoo", url: "yahoo.com") }
    4.times { Read.create(title: "netflix", url: "netflix.com") }
    3.times { Read.create(title: "instagram", url: "instagram.com") }
    2.times { Read.create(title: "yelp", url: "yelp.com") }
    1.times { Read.create(title: "gmail", url: "gmail.com") }
    
    visit '/'

    expect(page).to have_selector('.hot-read', count: 10)
    expect(page).to have_content("espn.com")
    expect(page).not_to have_content("gmail.com")

  end
end