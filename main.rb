class Todolist
  def initialize(filepath, content)
    @filepath = filepath
    @content = content
  end
  
  def addItem
    File.open(@filepath, "a") do |file|
      file.puts @content
    end
    puts "added item to file list.txt"
  end
  
  def seeContent(wantvar)
    if wantvar == "y" || wantvar == "yes"
      content = File.read(@filepath)
      puts "file content:\n#{content}"
    else
      puts "you dont want to see the file and because of this you dont gonna see the file content"
    end
  end
end

file = "./list.txt"

puts "what text you gonna add to the list?"
content_to_add = gets.chomp

todolist1 = Todolist.new(file, content_to_add)

todolist1.addItem

puts "do you want to see the list.txt content?"
see_content = gets.chomp

todolist1.seeContent(see_content)
