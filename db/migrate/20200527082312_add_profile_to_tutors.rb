# frozen_string_literal: true

class AddProfileToTutors < ActiveRecord::Migration[6.0]
  def change
    add_column :tutors, :image, :string
    add_column :tutors, :profile, :text
    add_reference :tutors, :language, foreign_key: true
  end
end
