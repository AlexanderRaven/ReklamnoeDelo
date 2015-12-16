class AdminController < ApplicationController
  def admin_main
	if not signed_in?
		redirect_back_or signin_path
	end
  end

  def configurations
  if not signed_in?
		redirect_back_or signin_path
	end
  end

  def blog_changer
  if not signed_in?
		redirect_back_or signin_path
	end
  end
end
