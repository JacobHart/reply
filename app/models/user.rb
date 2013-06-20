class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  has_many :messages, as: :receivable
  has_many :participants
  has_many :groups, through: :participants
end
