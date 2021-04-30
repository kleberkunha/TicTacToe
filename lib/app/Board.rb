class Board
  def initialize
    @board = [7, 8, 9, 4, 5, 6, 1, 2, 3]
    @result = Array.new(9)
  end

  def play_turn1(player)
    # TO DO : une méthode qui :
    # 1) demande au bon joueur ce qu'il souhaite faire
    check = false
    while check == false
      check = true
      puts " #{player.name} where do you want to play?"
      print '>'
      case_selected = gets.chomp.to_i

      if case_selected == 0 || case_selected > 9 || !@board.include?(case_selected)
        puts 'wrong asking'
        check = false
      else
        new_index = @board.index(case_selected)
        @result[new_index] = player
      end
    end
  end

  def play_turn2(player)
    check = false
    while check == false
      check = true
      puts " #{player.name} where do you want to play?"
      print '>'
      case_selected = gets.chomp.to_i

      if case_selected == 0 || case_selected > 9 || !@board.include?(case_selected)
        puts 'wrong asking'
        check = false
      else
        new_index = @board.index(case_selected)
        @result[new_index] = player
      end
    end
  end

  def victory?
    @result.each { |_a| a = 0 if a.nil? }
    # TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    # puts @result[1]  ==> ok
    return true if display_box(6) == display_box(7) && display_box(7) == display_box(8)

    display_box(3) == display_box(4) && display_box(4) == display_box(5) ||
      display_box(0) == display_box(1) && display_box(1) == display_box(2) ||
      display_box(0) == display_box(3) && display_box(3) == display_box(6) ||
      display_box(1) == display_box(4) && display_box(4) == display_box(7) ||
      display_box(2) == display_box(5) && display_box(5) == display_box(8) ||
      display_box(6) == display_box(4) && display_box(4) == display_box(2) ||
      display_box(0) == display_box(4) && display_box(4) == display_box(8)
  end

  def display
    puts "        #{display_box(0)} | #{display_box(1)} | #{display_box(2)} "
    puts '       -----------'
    puts "        #{display_box(3)} | #{display_box(4)} | #{display_box(5)} "
    puts '       -----------'
    puts "        #{display_box(6)} | #{display_box(7)} | #{display_box(8)} "
  end

  def display_box(index)
    if @result[index].nil?
      @board[index]
    else
      @result[index].symbol
    end
  end

  def is_end?
    true if @result.all? { |i| !i.nil? }
    false
  end
end
