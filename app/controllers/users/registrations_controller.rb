class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: {
      message: 'Успешно зарегистрировались',
      user: current_user
    }, status: :ok
  end

  def register_failed
    render json: { message: 'Что-то пошло не так, попробуйте ещё раз' }, status: :unprocessable_entity
  end
end
