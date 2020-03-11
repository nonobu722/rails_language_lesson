# frozen_string_literal: true

class Lesson < ApplicationRecord
  validates :name, presence: true, length: { in: 1..255 }

  belongs_to :tutor
  belongs_to :language
end
