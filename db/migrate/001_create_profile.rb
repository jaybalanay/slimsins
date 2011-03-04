class CreateProfile < ActiveRecord::Migration
  def self.up
    create_table :profiles, :force => true do |t|
      t.string "name"
    end
  end

  def self.down
    drop_table :profiles
  end
end
