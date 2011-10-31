module Static
  class PublicController < ApplicationController

    before_filter :find_page_by_slug, only: %w(slug)

    def slug
      @page_title = t("static.slug.page_title", title: @page.title)
      # @meta_description = t("static.slug.meta_description", description: @page.meta_description)
    end

    private # ----------------------------------------------

    def find_page_by_slug
      @page = Page.find_by_slug params[:slug]
    end

  end
end
