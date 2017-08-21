class Story
  def tell
    puts "Once upon a time there was a good horse."
    puts "Do you like this horse?"
    if gets.downcase.start_with? "y"
      puts "Do you like it a lot?"
      if gets.downcase.start_with? "y"
        puts "It lived happily ever after"
      else
        puts "It lived an okay life"
      end
    else
      puts "It got sad"
      puts "Forever :("
    end
  end
end
