  loop do
    if answer != ("yes" || "Yes" || "Y" || "y")
        puts "You haven't said 'yes' yet, have you?"
        puts "------------ah...hmmm......-------"
        puts "Please say yes, or we'll be here all day!"
        answer = gets.strip 
        if answer == ("yes" || "Yes" || "Y" || "y")
          break
        end