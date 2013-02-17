class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :prepare_for_mobile

  private

  def prepare_for_mobile
    request.format = :mobile
  end
end
