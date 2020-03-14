# frozen_string_literal: true

class AddNameToTutors < ActiveRecord::Migration[6.0]
  def change
    add_column :tutors, :name, :string
  end
end
