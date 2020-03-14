# frozen_string_literal: true

class Lesson < ApplicationRecord
  validates :name, presence: true, length: { in: 1..255 }
  validates :url, presence: true, format: /\A#{URI.regexp(%w[http https])}\z/
  validates :date_from, presence: true
  validates :date_to, presence: true

  belongs_to :tutor
  belongs_to :language

  mount_uploader :image, ImageUploader
end
