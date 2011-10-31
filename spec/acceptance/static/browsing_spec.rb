require 'acceptance/acceptance_helper'

feature "Browsing pages" do

  background do
    @page = F("static/page", title: "A page", body: "The body.")
  end

  scenario "Browse to page" do # ---------------------------
    visit "/static/a-page"

    page.should have_selector "title", text: @page.title

    # TODO Need to create a Mongoid::SEO plugin first
    # page.should have_selector "meta[name='description][content='#{@page.meta_description}']"

    page.should have_selector ".page" do |cont|
      cont.should have_selector ".page-title", content: @page.title
      cont.should have_selector ".page-body", content: @page.body
    end
  end

end
