class RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.new(sign_up_params)
    if @user.save
        render json: { user: resource, message: "Signed up successfully!", token: encode_token({resource: resource})}
    else
        render json: { error:resource.errors.full_messages }, status: :unprocessable_entity
    end
end
end