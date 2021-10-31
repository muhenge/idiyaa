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
  end

  def respond_to_on_destroy
    render json: { message: 'logged out successfully!', }
  end

end