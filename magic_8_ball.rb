@answers = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
]
@answers_orig = @answers.clone


def main
  puts
  print 'Please ask the computer a question, or type "quit": '
  question = $stdin.gets.strip
  case question
  when "quit"
    puts "\nThanks for using the Ruby Magic 8 Ball!\n\n"
    exit
  when "add_answer"
    add_answer
  when "print_answers"
    print_answers
  when "reset_answers"
    reset_answers
  else
    answer
  end
end

def answer
  puts "\nThe computer says:\n\n#{@answers.sample}."
  puts "\nAsk another question, or quit?"
  question = $stdin.gets.strip
  case question
  when "quit"
    puts "\nThanks for using the Ruby Magic 8 Ball!\n\n"
    exit
  else
    main
  end
end

def print_answers
  puts
  puts @answers
  main
end

def add_answer
  print "\nType the answer you want to add: "
  new_answer = $stdin.gets.strip
  @answers << new_answer
  puts "\nAnswer added!"
  main
end

def reset_answers
  @answers = @answers_orig.clone
  puts "\nThe answers were set back to the default answers!"
  main
end

puts "\nWelcome to the Ruby Magic 8 Ball!"
main
