class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.string :name, :null => false

      # Required
      t.string :persistence_token, :null => false

      # Optional
      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      #t.string :single_access_token, :null => false
      #t.string :perishable_token, :null => false
      #t.integer :login_count, :null => false, :default => 0
      #t.integer :failed_login_count, :null => false, :default => 0
      t.datetime :last_request_at
      #t.datetime :current_login_at
      #t.datetime :last_login_at
      #t.string :current_login_ip
      #t.string :last_login_ip

      t.timestamps
    end

    add_index :users, :email
    add_index :users, :persistence_token
    add_index :users, :last_request_at

  end
end
