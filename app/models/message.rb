class Message < ActiveRecord::Base
  attr_accessible :content
  belongs_to :receivable, polymorphic: true
end
