require 'csv'

# Tabela cruzada: [forma][região] => contagem
tabela = Hash.new { |h, k| h[k] = Hash.new(0) }

CSV.foreach("data/imoveis.csv", headers: true) do |linha|
  forma = linha['FORMA']
  regiao = linha['REGIAO']
  tabela[forma][regiao] += 1
end

# Exportar para CSV
CSV.open("saida.csv", "w") do |csv|
  regioes = tabela.values.map(&:keys).flatten.uniq.sort
  csv << ["FORMA"] + regioes

  tabela.each do |forma, regiao_hash|
    linha = [forma] + regioes.map { |r| regiao_hash[r] || 0 }
    csv << linha
  end
end

puts "Arquivo gerado: saida.csv"
