class Group < ActiveRecord::Base
  attr_accessible :name
  has_many :messages, as: :receivable
  has_many :participants
  has_many :users, through: :participants
end
