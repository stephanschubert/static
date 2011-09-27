module Static
  class PublicController < ApplicationController

    before_filter :find_page_by_slug, only: %w(slug)

    def slug
    end

    private # ----------------------------------------------

    def find_page_by_slug
      @page = Page.find_by_slug params[:slug]
    end

  end
end
