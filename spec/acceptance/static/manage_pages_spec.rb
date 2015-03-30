require 'acceptance/acceptance_helper'

feature "Manage pages" do

  context "Not logged in" do

    scenario "No backend access" do
      visit backend_pages_path
      expect(page).to have_content "Access denied"
    end

  end

  context "Logged in" do

    background do
      @page = F("static/page", title: "A page", body: "The body.")

      # TODO Add real users/accounts?
      basic_auth "baktinet", "6bd5069e47fc68f2"
    end

    scenario "View dashboard" do
      visit backend_pages_path

      within ".pages" do
        path = edit_backend_page_path(@page)
        text = @page.title
        expect(page).to have_selector "a[href$='#{path}']", text: text
      end
    end

    scenario "View page" do
      visit backend_page_path(@page)

      within ".page" do
        expect(page).to have_selector ".page-title", text: @page.title

        within ".page-body" do
          expect(page).to have_selector "p", text: @page.body
        end
      end
    end

    scenario "Create page" do
      visit backend_pages_path
      click_on t("backend.actions.create_page")

      within "form#new_page" do
        fill_in "page_title", with: "A title"
        fill_in "page_body", with: "The page's body."
        submit
      end

      expect(page).to have_content t("backend.messages.page_created")
    end

    scenario "Edit page" do
      visit edit_backend_page_path(@page)

      within "form[id^='edit_page']" do
        fill_in "page_body", with: "Updated content."
        submit
      end

      expect(page).to have_content("backend.messages.page_updated")
    end

    scenario "Delete page", js: true do
      visit backend_pages_path

      path = backend_page_path(@page)

      # page.driver.accept_js_confirms!
      # page.driver.accept_js_prompts!
      #binding.pry
      find("a[data-method='delete'][href$='#{path}']").click
      #page.driver.accept_js_confirms!
      #page.driver.accept_js_prompts!

      expect(page).to have_content t("backend.messages.page_deleted")
    end
  end
end
