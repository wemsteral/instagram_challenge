# frozen_string_literal: true
class Post < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  validates_presence_of :description

end
