class Weibo < ActiveRecord::Base
  attr_accessible :content, :ctime, :flag, :wtype, :userid
  validates :content,:presence => true
  has_many :comments 
  default_scope order 'ctime desc'
end
