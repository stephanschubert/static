require 'acceptance/acceptance_helper'

feature "Browsing pages" do

  background do
    @page = F("static/page", title: "A page", body: "The body.")
  end

  scenario "Browse to page" do
    visit "/static/a-page"

    expect(page).to have_selector("title", text: @page.title, visible: false)

    # TODO Need to create a Mongoid::SEO plugin first
    # page.should have_selector "meta[name='description][content='#{@page.meta_description}']"

    expect(page).to have_selector(".page") do |cont|
      expect(cont).to have_selector(".page-title", content: @page.title)
      expect(cont).to have_selector(".page-body", content: @page.body)
    end
  end
end
