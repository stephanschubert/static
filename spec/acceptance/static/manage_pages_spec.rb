require 'acceptance/acceptance_helper'

feature "Manage pages" do

  scenario "Create a new page" do # ------------------------
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
