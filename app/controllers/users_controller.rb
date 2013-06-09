class UsersController < ApplicationController
  load_and_authorize_resource :except=> [:list,:show,:index,:new,:edit,:delete,:create,:update,:destroy]
  def index
    @users = User.all
  end
  
  def list
    if  current_user and current_user.deleted_flag 
     flash[:notice] = ""
     render :action => 'unknown'
    else
      @users = User.order("users.name ASC")
     end
  end
  
  def unknown
    
  end
  
  def show
    @user = User.find(params[:id])
  end

  

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    #if params[:user][:password].blank?
     # params[:user].delete(:password)
     #params[:user].delete(:password_confirmation)
    #end
    params[:user][:role_ids] ||= []

    if @user.update_attributes(params[:user])
      #sign_in(@user, :bypass => true) if @user == current_user
      flash[:notice] = "User was successfully updated."
      redirect_to :action =>'show', :id => @user.id
    else
      render :action => 'edit'
    end
  end

  def delete
    @user=User.find(params[:id ])
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.deleted_flag = true
    @user.update_attributes(params[:user])
    flash[:notice] = "User was successfully removed."
    redirect_to :action => 'list'
  end
  
 
  
end
