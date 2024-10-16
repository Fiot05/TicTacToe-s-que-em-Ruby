load "verificar.rb"

$jogoTerminou = false

$tabuleiro = [
  [" "," "," "],
  [" "," "," "],
  [" "," "," "]
]

while $jogoTerminou == false do
  puts "#{$tabuleiro[0][0]} | #{$tabuleiro[0][1]} | #{$tabuleiro[0][2]}"
  puts "----------"
  puts "#{$tabuleiro[1][0]} | #{$tabuleiro[1][1]} | #{$tabuleiro[1][2]}"
  puts "----------"
  puts "#{$tabuleiro[2][0]} | #{$tabuleiro[2][1]} | #{$tabuleiro[2][2]}"

  puts " "
  puts "rodada do X, coloque a linha"
  $linhaX = gets.chomp.to_i
  puts "rodada do X, coloque a coluna"
  $colunaX = gets.chomp.to_i
  verificarJogadaX()
  verificarSeAlguemGanhou()
  if $jogoTerminou == true
    break
  end
  
  puts "#{$tabuleiro[0][0]} | #{$tabuleiro[0][1]} | #{$tabuleiro[0][2]}"
  puts "----------"
  puts "#{$tabuleiro[1][0]} | #{$tabuleiro[1][1]} | #{$tabuleiro[1][2]}"
  puts "----------"
  puts "#{$tabuleiro[2][0]} | #{$tabuleiro[2][1]} | #{$tabuleiro[2][2]}"

  puts " "
  puts "rodada do O, coloque a linha"
  $linhaO = gets.chomp.to_i
  puts "rodada do O, coloque a coluna"
  $colunaO = gets.chomp.to_i
  verificarJogadaO()
  verificarSeAlguemGanhou()
end