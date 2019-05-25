# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :description
  validates_presence_of :image
end
