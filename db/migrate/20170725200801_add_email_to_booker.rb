class AddEmailToBooker < ActiveRecord::Migration[5.0]
  def change
    add_column :bookers, :email, :string
    add_column :bookers, :avtar, :string
    add_column :bookers, :avtar_small, :string
  end
end
