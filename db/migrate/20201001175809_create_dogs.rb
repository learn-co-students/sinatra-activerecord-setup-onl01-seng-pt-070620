class CreateDogs < ActiveRecord::Migration[5.2]
  def up #create table
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end 
  end

  def down #drop table
    drop_table :dogs
  end

  # refactor using change method which has both up and down (rolling back instead of calling #down) method

  # def change
  #   create_table :dogs do |t|
  #     t.string :name
  #     t.string :breed
  #   end
  # end
end
