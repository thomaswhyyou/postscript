class SessionsController < Devise::SessionsController
  # ADD AN ACTION TO DESTROY, INHERIT ALL OTHERS FROM DEVISE SESSIONCONTROLLER / OVERRIDE ROUTING IN ROUTES.RB

  def destroy
    current_user.update_attribute(:last_sign_out_at, Time.now)
    super
  end

end