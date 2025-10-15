require 'csv'

CSV.foreach("data/imoveis.csv", headers: true) do |linha|
  puts "BAIRRO: #{linha['BAIRRO']}"
end


