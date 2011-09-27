module Static
  class PagesController < ApplicationController
    layout "static/backend"
    respond_to :html

    before_filter :find_page, only: %w(show)

    def index
    end

    def new
      @page = Page.new
    end

    def show
    end

    def create
      @page = Page.new incoming_changes

      if @page.save
        flash[:notice] = t("backend.messages.page_created")
        respond_with :backend, @page
      else
      end
    end

    private # ----------------------------------------------

    def incoming_changes
      params[:page]
    end

    def find_page
      @page = Page.find params[:id]
    end

  end
end
