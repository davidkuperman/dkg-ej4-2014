class CreateProgrammers < ActiveRecord::Migration
  def change
    create_table :programmers do |t|
      t.string :name
      t.string :expertise
      t.string :skills

      t.timestamps
    end
  end
end
