class User < ActiveRecord::Base
  has_many :jokes
  has_many :ratings
  
  has_secure_password
 
end
