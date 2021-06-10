require 'active_record'
require 'activerecord-import'

ActiveRecord::Base.establish_connection(
    adapter: 'mysql2',
    host: 'localhost',
    username: 'dev',
    password: 'password123',
    database: 'sandbox'
)

class Stock < ActiveRecord::Base

    attr_accessor :timestamp
    attr_accessor :open
    attr_accessor :high
    attr_accessor :low
    attr_accessor :close
    attr_accessor :adjusted_close
    attr_accessor :volume
    attr_accessor :dividend_amount
    attr_accessor :split_coefficient

end