class SessionsController < ApplicationController
	skip_before_action :auth!, only: [:new, :create]
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
		  session[:user_id] = user.id
		  flash[:notice] = "Pomyślnie zalogowano!"
		  redirect_to users_path, notice: "Witaj, #{user.name}!" 
		else
		  #flash.now.alert 'Nie udało się zalogować...'
		  render :new
		end
  end

  def destroy
  	session[:user_id] = nil
	redirect_to users_path, notice: 'Do zobaczenia!'
  end
end
