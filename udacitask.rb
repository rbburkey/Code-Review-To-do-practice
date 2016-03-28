require_relative 'todolist.rb'

# Creates a new todo list
t = TodoList.new("Gary's List")
# Add four new items
t.add_item("Wash Car")
t.add_item("Fix Window")
t.add_item("Clean out gutter")
t.add_item("Pick kids up")
# Print the list
t.list
# Delete the first item
t.delete(1)
# Print the list
t.list
# Delete the second item
t.delete(2)
# Print the list
t.list
# Update the completion status of the first item to complete
t.completed?(1)
# Print the list
t.list
# Update the title of the list
t.edit_title("The new title")
# Print the list
t.list
