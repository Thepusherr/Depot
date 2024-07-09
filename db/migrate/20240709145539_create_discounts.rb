class CreateDiscounts < ActiveRecord::Migration[7.1]
  def change
    create_table :discounts do |t|

      t.timestamps
    end
  end
end
