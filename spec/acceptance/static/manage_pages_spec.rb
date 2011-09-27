require 'acceptance/acceptance_helper'

feature "Manage pages" do

  background do
    @page = F("static/page", title: "A post", body: "The body.")
  end

  scenario "View page" do # --------------------------------
    visit "/static/backend/pages/" + @page.to_param

    page.html.should have_tag ".page" do
      with_tag ".title", text: @page.title
      with_tag ".body", text: @page.body
    end
  end

  scenario "Create new page" do # --------------------------
    visit "/static/backend/pages"
    click_on t("backend.actions.create_page")

    within "form#new_page" do
      fill_in "page_title", with: "A title"
      fill_in "page_body", with: "The post's body."
      submit
    end

    page.should have_content t("backend.messages.page_created")
  end

end
