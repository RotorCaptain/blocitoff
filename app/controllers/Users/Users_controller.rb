def new
  UserMailer.registration_confirmation(@user).deliver
end
def create
  @user = User.new(params[:user])
  if @user.save
    UserMailer.registration_confirmation(@user).deliver
    sign_in @user
    flash[:success] = "Welcome!"
    redirect_to @user
  else
    render 'new'
  end
end