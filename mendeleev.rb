# encoding: utf-8

require "json"
require_relative "lib/element"

file = File.read("#{__dir__}/data/table.json", encoding: "UTF-8")
data = JSON.parse(file)
table = {}
data.each do |label, info|
  element = Element.new(
    number:  info["number"],
    name:  info["name"],
    density:  info["density"],
    year:  info["year"],
    discoverer:  info["discoverer"],
  )
  table[label] = element
end

puts "Известные элементы:"
table.keys.each.with_index(1) do|label, index|
  print "#{"%2s" % label} | "
  puts if index % 5 == 0
end
puts
puts "О каком элементе хотите узнать?"
label = STDIN.gets.chomp
if table.key?(label)
  puts table[label]
else
  puts "Извините, про такой элемент мы еще не знаем."
end
