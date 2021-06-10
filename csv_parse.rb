require './stock_model'
require 'csv'

rows_to_insert = []

CSV.foreach("/Users/andy/temp/20-year-top-10/daily_adjusted_AAPL.csv", headers: true) do |row|
    row_to_insert = row.to_hash()
    rows_to_insert << row_to_insert
end

Stock.import(rows_to_insert)