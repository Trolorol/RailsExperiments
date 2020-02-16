# frozen_string_literal: true

class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token, if: :request_is_json?
  before_action :authenticate_user!

  def request_is_json?
    request.format.json?
  end
end
