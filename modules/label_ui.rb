module LabelUI
  def display_label
    if @labels.length.zero?
      puts "\n"
      puts Rainbow('  No labels registered yet!').red.bright.italic
      puts "\n"
    else

      puts Rainbow("  List of all Labels: \n").gold.bright.blink
      @labels.each_with_index do |label, index|
        puts "\n"
        print Rainbow("  #{index + 1}) Label:\n").purple.bright
        print Rainbow("  Title: #{label.title}, Color: #{label.color}.").purple.bright
        puts "\n"
        print Rainbow('_______________________________________').purple
        puts "\n"
      end
    end
  end
end
