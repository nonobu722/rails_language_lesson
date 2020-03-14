# frozen_string_literal: true

class Tutor < ApplicationRecord
  before_save { self.email = email.downcase }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lessons, dependent: :destroy
end
