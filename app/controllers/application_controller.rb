class ApplicationController < ActionController::Base
    protect_from_forgery
    # skip_before_action :verify_authenticity_token
    respond_to :json
    include ActionController::MimeResponds
    def confirmed
    end
end
