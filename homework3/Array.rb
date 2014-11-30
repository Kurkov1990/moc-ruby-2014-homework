puts "Сheck the content elements"
@imported_user = [ 'boyko', 'petrenko', 'kozak' ]
@existing_user = [ 'boyko', 'petrenko', 'kozak', 'ivanov']
puts 'Already imported' if (@imported_user - @existing_user).empty?
puts "==================================================================="
puts

puts "Finding common elements"
tags_post1 = [ 'ruby', 'rails', 'java', "c++" ]
tags_post2 = [ 'ruby', 'delphi', 'pascal' ]
puts common_tags = tags_post1 & tags_post2
puts "==================================================================="
puts

puts "Merging arrays"
@array1 = [ 45, 356, 475, 562, 11, 3, 789 ]
@array2 = [ 562, 45, 487, 304, 197 ]
@all_array =  @array1 | @array2
puts @all_array.join ","
puts "==================================================================="
puts

puts "Sort array hash"
data = [
    {
        name: 'Vasya',
        location: 'Kiev'
    },
    {
        name: 'Pavel',
        location: 'Cherkassy'
    },
    {
        name: 'Sasha',
        location: 'Odessa'
    },
    {
        name: 'Ivan',
        location: 'Lviv'
    }
]
x=data.sort_by { |hsh| hsh[:location] }
y=data.sort_by { |hsh| hsh[:name] }
puts "Sort by location"
puts x
puts "Sort by name"
puts y
puts "==================================================================="
puts

puts "Get unique items"
Product = Struct.new(:id, :category_id)

products = [
    Product.new(1, 1),
    Product.new(2, 2),
    Product.new(4, 3),
    Product.new(4, 1),
    Product.new(5, 3),
    Product.new(6, 5),
]
products = products.uniq &:category_id
puts products
puts "==================================================================="
puts

puts "String filter"
books = [
    'The Ruby Programming Language',
    'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers\' Guide (The Facets of Ruby)',
    'Practical Object-Oriented Design in Ruby: An Agile Primer',
    'Eloquent Ruby',
    'Ruby on Rails Tutorial: Learn Web Development with Rails'
]

puts books1 = books.grep(/[Rr]ails/)
puts books2 = books.grep(/Programming/)
puts "==================================================================="
