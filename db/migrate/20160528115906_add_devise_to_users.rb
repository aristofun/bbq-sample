# Миграция сгенерирована девайзом при добавлении функционала:
#   rails g devise User
#
class AddDeviseToUsers < ActiveRecord::Migration

  # метод self.up - для накатывания миграции
  def self.up

    # меняем таблицу users
    change_table :users do |t|

      ## Database authenticatable
      t.change :email, :string, null: false, default: "" # меняем таблицу email - новые ограничения
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string :current_sign_in_ip
      t.string :last_sign_in_ip
    end

    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
  end

  # self.down - для откатывания миграции
  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
