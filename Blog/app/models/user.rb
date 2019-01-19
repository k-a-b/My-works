class User < ApplicationRecord
  has_many :messages
  has_many :comments 
  has_many :commented_messages, through: :comments, source: :commentable, source_type: :Message
  has_many :commented_users, through: :comments, source: :commentable, source_type: :User
end
