class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,:recoverable, :rememberable, :trackable, :validatable
  
     validates :name, :presence => true, :length => { :maximum => 25 }
     validates :username, :length => { :within => 4..25 }, :uniqueness => true
     #validates :email, :presence => true, :length => { :maximum => 100 }, :format => EMAIL_REGEX
     validates :std, :presence => true, :length => { :maximum => 5}
     validates :section, :presence => true, :length => { :maximum => 5 } ,:format =>{:with=>/^[a-zA-Z]{1}$/}
     validates :mobile, :length => { :maximum => 10 }, :format => /^[0-9]{10}$/
     #validates :password, :presence => true, :length => { :within => 5..25 }
    
  # Setup accessible (or protected) attributes for your model
  attr_accessible :name,:username,:std,:section,:mobile,:email, :password, :password_confirmation, :remember_me,:role_ids
  # attr_accessible :title, :body
end
