# frozen_string_literal: true

class User < ApplicationRecord
  before_save { self.email = email.downcase }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
