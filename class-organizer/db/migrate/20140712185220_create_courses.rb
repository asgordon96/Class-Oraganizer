class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :instructor
      t.string :code
      t.string :location
      t.string :section
      t.float :credits

      t.timestamps
    end
  end
end
