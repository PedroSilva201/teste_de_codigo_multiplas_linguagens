require 'csv'

contagem = Hash.new(0)

CSV.foreach("data/imoveis.csv", headers: true) do |linha|
  bairro = linha['BAIRRO']
  contagem[bairro] += 1
end

contagem.each do |bairro, quantidade|
  puts "#{bairro}: #{quantidade} unidade(s)"
end
