require "baked_file_system"

class FileStorage
  extend BakedFileSystem
  bake_folder "books"
end

books = FileStorage.files

puts "Books:"
books.each_with_index do |book, i|
  puts "  #{i}: #{book.path[1..-1]}"
end

print "Which book do you read? "
if input = gets
  num = input.strip.to_i
  puts books[num].gets_to_end
end
