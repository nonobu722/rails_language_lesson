# frozen_string_literal: true

class Tutor < ApplicationRecord
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { in: 1..140 }
  validates :profile, length: { maximum: 200 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lessons, dependent: :destroy
  has_many :tutor_languages, dependent: :destroy
  has_many :languages, through: :tutor_languages

  belongs_to :language, optional: true

  mount_uploader :image, ImageUploader
end
