class TodoList
  attr_accessor :items, :title
  def initialize (title)
    @items = []
    @title
  end

  def put_a_line
    puts "\n"
    puts "<>" * 15
    puts "\n"
  end


def main_menu
  puts "#{@title}"
  puts "What would you like to do?"
  # puts "(C)reate List"
  puts "(E)dit List"
  puts "(L)ist Items"
  puts "(A)dd Todo"
  puts "(D)elete Todo"
  puts "(U)pdate Todo Status"
  puts "(Ex)it"
  put_a_line
  input = gets.chomp.downcase
  controller(input)
end


def controller(input)
  case input.downcase
  # when "c"
  #   put_a_line
  #   puts "What would you like to name your To-Do List?"
  #   title = gets.chomp
  #   t = TodoList.new(title)
  #   puts "Your to-do list is named #{title}."
  #   put_a_line
  when "e"
    put_a_line
    puts "What would you like the new name of the to-do list to be?"
    new_title = gets.chomp.downcase
    edit_title(new_title)
    puts "#{new_title} is now the name of your list"
    put_a_line
  when "l"
    put_a_line
    list
    put_a_line
  when "a"
    put_a_line
    puts "What item would you like to add to your list?"
    item = gets.chomp
    add_item(item)
    puts "#{item} has been added."
    put_a_line
  when "d"
    put_a_line
    puts "What is the number of the item you would like to delete?"
    index = gets.chomp
    delete(index)
    puts "Deleted successfully"
    put_a_line
  when "u"
    put_a_line
    puts "What is the number of the item you have completed?"
    index = gets.chomp
    completed?(index)
    put_a_line
  when "ex"
    exit
  end
  main_menu
end


def edit_title(new_title)
  @title = new_title
end


def add_item(text)
  @items << Item.new(text)
  @items.last
end


def delete(index)
  todo = items.delete_at(index.to_i-1)
end


def completed?(index)
  if todo = @items[index.to_i-1]
    todo.context = true
  end
end
#can easily make it say completed and what not, the instructions just specified a boolean
#so I used true and false

def list
  if @items.empty?
    puts "No current items in your list"
  else
    @title
    @items.each_with_index do |i, index|
      puts "#{index + 1}. #{i.text}: #{i.context}"
    end
  end
end

end




class Item
  attr_accessor :text, :context
  def initialize(text)
    @text = text
    @context = false
  end


    def to_s
      "#{@text}: #{@context}"
    end

end
