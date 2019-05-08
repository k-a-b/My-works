class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :commented_messages, through: :comments, source: :commentable, source_type: :Message
  has_many :commented_users, through: :comments, source: :commentable, source_type: :User
end
