# frozen_string_literal: true

class AddDetailsToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :image, :string
    add_reference :lessons, :language, foreign_key: true
  end
end
