# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :tutor
  belongs_to :language
end
