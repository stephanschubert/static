require 'acceptance/acceptance_helper'

feature "Manage pages" do

  background do
    @page = F("static/page", title: "A post", body: "The body.")
  end

  scenario "View page" do # --------------------------------
    visit backend_page_path(@page)

    page.html.should have_tag ".page" do
      with_tag ".title", text: @page.title
      with_tag ".body", text: @page.body
    end
  end

  scenario "Create page" do # ------------------------------
    visit backend_pages_path
    click_on t("backend.actions.create_page")

    within "form#new_page" do
      fill_in "page_title", with: "A title"
      fill_in "page_body", with: "The post's body."
      submit
    end

    page.should have_content t("backend.messages.page_created")
  end

  scenario "Edit page" do # --------------------------------
    visit edit_backend_page_path(@page)

    within "form[id^='edit_page']" do
      fill_in "page_body", with: "Updated content."
      submit
    end

    page.should have_content("backend.messages.page_updated")
  end

  scenario "Delete page" do # ------------------------------
    visit backend_pages_path
  end

end
