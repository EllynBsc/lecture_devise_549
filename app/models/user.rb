class User < ApplicationRecord
 #Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#   database_authenticatable: store email + encrypted password in DB
#   registerable: register, destroy profile and login
#   recoverable: provides mechanism to reset forgotten password
#   rememberable: cookies db in the browser for your email and password
#   validatable: validates email and password

# confirmable: users need to confirm their mails
#  lockable: too many login attempts
#  timeoutable: certain time for the login
 # trackable: to track last sign in last sign out
 # omniauthable : sign up with a third party, fb, google, twitter, gmail,github (+config)
end
