def verificarJogadaX()
  if $linhaX <= 2 && $colunaX <= 2 && $linhaX >= 0 && $colunaX >= 0
    if $tabuleiro[$linhaX][$colunaX] == " "
      $tabuleiro[$linhaX][$colunaX] = "x"
    else
      puts "está casa já está ocupada"

      puts " "
      puts "rodada do X, coloque a linha"
      $linhaX = gets.chomp.to_i
      puts "rodada do X, coloque a coluna"
      $colunaX = gets.chomp.to_i
      verificarJogadaX()
      verificarSeAlguemGanhou()
    end
  else
    puts "o número tem que ser entre 0, 1 ou 2"

    puts " "
    puts "rodada do X, coloque a linha"
    $linhaX = gets.chomp.to_i
    puts "rodada do X, coloque a coluna"
    $colunaX = gets.chomp.to_i
    verificarJogadaX()
    verificarSeAlguemGanhou()
  end
end

def verificarJogadaO()
  if $linhaO <= 2 && $colunaO <= 2 && $linhaO >= 0 && $colunaO >= 0
    if $tabuleiro[$linhaO][$colunaO] == " "
      $tabuleiro[$linhaO][$colunaO] = "O"
    else
      puts "está casa já está ocupada"

      puts " "
      puts "rodada do O, coloque a linha"
      $linhaO = gets.chomp.to_i
      puts "rodada do O, coloque a coluna"
      $colunaO = gets.chomp.to_i
      verificarJogadaO()
      verificarSeAlguemGanhou()
    end
  else
    puts "o número tem que ser entre 0, 1 ou 2" 

    puts " "
    puts "rodada do O, coloque a linha"
    $linhaO = gets.chomp.to_i
    puts "rodada do O, coloque a coluna"
    $colunaO = gets.chomp.to_i
    verificarJogadaO()
    verificarSeAlguemGanhou()
  end
end

def verificarSeAlguemGanhou()
  if $tabuleiro[0][0] == "x" && $tabuleiro[0][1] == "x" && $tabuleiro[0][2] == "x"
    puts "X venceu"
    $jogoTerminou = true
  elsif $tabuleiro[1][0] == "x" && $tabuleiro[1][1] == "x" && $tabuleiro[1][2] == "x"
    puts "X venceu"
    $jogoTerminou = true
  elsif $tabuleiro[2][0] == "x" && $tabuleiro[2][1] == "x" && $tabuleiro[2][2] == "x"
    puts "X venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][0] == "x" && $tabuleiro[1][0] == "x" && $tabuleiro[2][0] == "x"
    puts "X venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][1] == "x" && $tabuleiro[1][1] == "x" && $tabuleiro[2][1] == "x"
    puts "X venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][2] == "x" && $tabuleiro[1][2] == "x" && $tabuleiro[2][2] == "x"
    puts "X venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][0] == "x" && $tabuleiro[1][1] == "x" && $tabuleiro[2][2] == "x"
    puts "X venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][2] == "x" && $tabuleiro[1][1] == "x" && $tabuleiro[2][0] == "x"
    puts "X venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][0] == "o" && $tabuleiro[0][1] == "o" && $tabuleiro[0][2] == "o"
    puts "O venceu"
    $jogoTerminou = true
  elsif $tabuleiro[1][0] == "O" && $tabuleiro[1][1] == "O" && $tabuleiro[1][2] == "O"
    puts "O venceu"
    $jogoTerminou = true
  elsif $tabuleiro[2][0] == "O" && $tabuleiro[2][1] == "O" && $tabuleiro[2][2] == "O"
    puts "O venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][0] == "O" && $tabuleiro[1][0] == "O" && $tabuleiro[2][0] == "O"
    puts "O venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][1] == "O" && $tabuleiro[1][1] == "O" && $tabuleiro[2][1] == "O"
    puts "O venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][2] == "O" && $tabuleiro[1][2] == "O" && $tabuleiro[2][2] == "O"
    puts "O venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][0] == "O" && $tabuleiro[1][1] == "O" && $tabuleiro[2][2] == "O"
    puts "O venceu"
    $jogoTerminou = true
  elsif $tabuleiro[0][2] == "O" && $tabuleiro[1][1] == "O" && $tabuleiro[2][0] == "O"
    puts "O venceu"
    $jogoTerminou = true
  else
    if $tabuleiro[0][0] != " " && $tabuleiro[0][1] != " " && $tabuleiro[0][2] != " " && $tabuleiro[1][0] != " " && $tabuleiro[1][1] != " " && $tabuleiro[1][2] != " " && $tabuleiro[2][0] != " " && $tabuleiro[2][1] != " " && $tabuleiro[2][2] != " "      
      puts "empate"
      $jogoTerminou = true
    end
  end
end