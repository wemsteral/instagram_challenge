# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  validates_presence_of :username
  validates_presence_of :email
  validates_presence_of :password
end
