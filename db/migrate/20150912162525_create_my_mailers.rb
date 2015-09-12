class CreateMyMailers < ActiveRecord::Migration
  def change
    create_table :my_mailers do |t|

      t.timestamps null: false
    end
  end
end
