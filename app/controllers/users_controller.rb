class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])

    render("users/show.html.erb")
  end

  def new
    @user = User.new

    render("users/new.html.erb")
  end

  def create
    @user = User.new

  #  @photo.caption = params[:caption]
  #  @photo.image = params[:image]
  #  @photo.user_id = params[:user_id]

    save_status = @user.save

  #  if save_status == true
  #    redirect_to("/photos/#{@photo.id}", :notice => "Photo created successfully.")
#    else
      render("users/new.html.erb")
  #  end
  end

  def edit
    @user = User.find(params[:id])

    render("users/edit.html.erb")
  end

  def update
    @photo = User.find(params[:id])

    @photo.caption = params[:caption]
    @photo.image = params[:image]
    @photo.user_id = params[:user_id]

  #  save_status = @photo.save

  #  if save_status == true
  #    redirect_to("/photos/#{@photo.id}", :notice => "Photo updated successfully.")
  #  else
      render("users/edit.html.erb")
  #  end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    if URI(request.referer).path == "/photos/#{@photo.id}"
      redirect_to("/", :notice => "Photo deleted.")
    else
      redirect_to(:back, :notice => "Photo deleted.")
    end
  end
end
