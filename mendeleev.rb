# encoding: utf-8

require "json"
require_relative "lib/element"

data = JSON.parse(File.read("#{__dir__}/data/table.json", encoding: "UTF-8"), symbolize_names: true)
table = {}
data.each { |label, info| table[label] = Element.new(info) }

puts "Известные элементы:"
table.keys.each_slice(5) do |labels|
  labels.each { |label| print "#{"%2s" % label} | "}
  puts
end
puts "О каком элементе хотите узнать?"
label = STDIN.gets.chomp.capitalize.to_sym
if table.key?(label)
  puts table[label]
else
  puts "Извините, про такой элемент мы еще не знаем."
end
