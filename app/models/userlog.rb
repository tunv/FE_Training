class Userlog < ActiveRecord::Base
  has_many :user_logs
  belongs_to :user
end
