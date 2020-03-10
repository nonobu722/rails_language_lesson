# frozen_string_literal: true

class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :url
      t.datetime :date_from
      t.datetime :date_to
      t.references :tutor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
