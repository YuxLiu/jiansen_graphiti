class ApplicationController < ActionController::API
  include Graphiti::Rails::Responders
  include ActionPolicy::Controller

  # api_guard
  attr_reader :current_user
  before_action :authenticate_and_set_user, if: -> { request.authorization }
  # Action Policy
  authorize :user, through: :current_user
  # Action Policy: ensure all actions are authorized
  verify_authorized

end
