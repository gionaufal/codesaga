def strip_text(text)
  text.strip
end

def tel_description(tipo)
  # if tipo == 'C'
  #   "Comercial"
  # elsif tipo == "R"
  #   "Residencial"
  # elsif tipo == 'M'
  #   "Celular"
  # end
  case tipo
  when 'C'
    'Comercial'
  when 'R'
    'Residencial'
  when 'M'
    'Celular'
  else
    'Não identificado'
  end
end

def get_register
  puts 'Entre com seu nome: '
  nome = gets.strip
  puts "Seu nome é: #{nome}"
  puts "Entre seu número de telefone: "
  telefone = gets
  puts "Entre o tipo de telefone: "
  puts "Comercial [C], Residencial [R] ou Celular [M]"
  tipo_telefone = gets
  puts "#{strip_text(nome)} - #{strip_text(telefone)} - #{tel_description(strip_text(tipo_telefone))}"
end

continua = '1'
while continua == '1'
  get_register
  puts 'Deseja incluir um novo registro?'
  puts '[1] Sim [0] Não'
  continua = strip_text(gets)
end
