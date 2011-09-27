module Static
  class PagesController < ApplicationController
    layout "static/backend"
    respond_to :html

    before_filter :find_page, only: %w(edit show update)

    def index
    end

    def new
      @page = Page.new
    end

    def edit
    end

    def show
    end

    def create
      @page = Page.new incoming_changes

      if @page.save
        flash[:notice] = t("backend.messages.page_created")
        respond_with :backend, @page
      else
        # TODO Fail path
      end
    end

    def update
      if @page.update_attributes incoming_changes
        flash[:notice] = t("backend.messages.page_updated")
        respond_with :backend, @page
      else
        # TODO Fail path
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
