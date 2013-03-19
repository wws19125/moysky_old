class Comment < ActiveRecord::Base
  attr_accessible :body, :commenterid, :ctime,:weibo_id
  default_scope order 'ctime desc'
  validates :body,:ctime,:presence => true
  #belongs_to :weibo
  belongs_to :comment,:polymorphic => true
  #belongs_to :parent,:class_name => 'Comment'
  #has_many :children,:class_name => 'Comment',:foreign_key => 'parent_id',:dependent => :destroy
  has_many :comments
end
