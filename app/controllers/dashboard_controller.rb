class DashboardController < SecuredController
  layout false
  before_action :authenticate_admin_user!

  private

  def authenticate_admin_user!
    current_user.role?(:Admin)
  end

end