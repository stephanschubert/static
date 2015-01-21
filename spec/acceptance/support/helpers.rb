module HelperMethods

  # Find and click the 'submit' button.
  # Should be used +within+ a form's scope.
  def submit
    find("[type='submit']").click
  end

  # Reload the current page
  def reload_page
    visit page.current_url
  end

  # Shortcut for accessing localizations
  def t(*args)
    I18n.t(*args)
  end
end

RSpec.configuration.include HelperMethods, :type => :feature
