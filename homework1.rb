begin 
    puts "|===============================================|"
    puts "|剪刀、石頭、布遊戲                             |"
    puts "|===============================================|"

    begin
        puts "請您的選擇：剪刀(S)、石頭(R)、布(P)"
        user_input = gets.chomp.upcase
    end while !["S", "R", "P"].include?(user_input)

    arr = ["S", "R", "P"]
    computer_input = arr.sample

    if user_input == computer_input
        puts "平手"
    else
        case user_input 
        when "S" then puts (computer_input == "R") ? "您出剪刀(S)，電腦出石頭(R)，電腦贏！" : "您出剪刀(S)，電腦出布(P)，您贏！"
        when "R" then puts (computer_input == "P") ? "您出石頭(R)，電腦出布(P)，電腦贏！" : "您出石頭(R)，電腦出剪刀(S)，您贏！" 
        when "P" then puts (computer_input == "S") ? "您出布(P)，電腦出剪刀(S)，電腦贏！" : "您出布(P)，電腦出石頭(R)，您贏！"
        end
    end

    begin
        puts "結束?: 是(Y) / 否(N)"
        continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)

end while continue == "N"
puts "謝謝您，再見！"