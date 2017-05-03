module SetSource
  extend ActiveSupport::Concern

  # Devise whiteliist
  # Before other controllers, create anytime you work with devise
  included do
    before_filter :set_source
  end

  def set_source
    session[:source] = params[:q] if params[:q]
  end
end
