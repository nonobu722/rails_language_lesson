# frozen_string_literal: true

class User < ApplicationRecord
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { in: 1..140 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
