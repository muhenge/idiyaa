class SessionsController < Devise::SessionsController

  private

  def respond_with(resource, _opts = {})
    render json: { 
      user: resource,
      message: 'You are logged in.' ,
      token: encode_token({
        resource: resource
      })
      }, status: :ok
  #   render json: {jwt: encode_token({
  #     email: @user.email,
  # })}

  end

  def respond_to_on_destroy
    head :no_content
  end

end