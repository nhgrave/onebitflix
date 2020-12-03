class Api::External::AuthenticationController < ApiController
  before_action :authorize_request, except: :login

  # POST /auth/login
  def login
    @user = User.find_by email: params.require(:email)

    if @user.try :authenticate, params.require(:password)
      token = JsonWebTokenService.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i

      render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"), name: @user.name, email: @user.email }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: 'unauthorized'
    end
  end
end
