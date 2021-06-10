require 'active_record'

class CreateStocks < ActiveRecord::Migration
    def change
      create_table :stocks do |t|
        t.date :timestamp
        t.float :open
        t.float :high
        t.float :low
        t.float :close
        t.float :adjusted_close
        t.float :volume
        t.float :dividend_amount
        t.float :split_coefficient
      end
    end
  end