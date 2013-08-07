class User < ActiveRecord::Base
  attr_accessible :full_name, :ininitials, :password, :username
end
