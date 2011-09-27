require 'acceptance/acceptance_helper'

feature "Browsing pages" do

  background do
    @page = F("static/page", title: "A page", body: "The body.")
  end

  scenario "Browse to page" do # ---------------------------
    visit "/static/a-page"

    page.html.should have_tag ".page" do
      with_tag ".title", text: @page.title
      with_tag ".body", text: @page.body
    end
  end

end
