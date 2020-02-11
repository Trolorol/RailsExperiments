# frozen_string_literal: true

class Idea < ApplicationRecord
  has_many :comments
  mount_uploader :picture, PictureUploader
end
