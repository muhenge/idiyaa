class ApplicationController < ActionController::API
  def render_jsonapi_response(resource)
    if resource.errors.empty?
      render json: resource
    else
      render json: resource.errors, status: 400
    end
  end

def encode_token(payload = {})
  exp = 24.hours.from_now
  payload[:exp] = exp.to_i
  JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
end

end
