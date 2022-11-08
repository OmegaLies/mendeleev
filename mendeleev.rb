# encoding: utf-8

require "json"
require_relative "lib/element"

lines = File.read("#{__dir__}/data/table.json", encoding: "UTF-8")
table = JSON.parse(lines, symbolize_names: true, object_class: Element).to_h

puts "Известные элементы:"
table.each_key.each_slice(5) { |labels| puts labels.map { |label| "#{"%2s" % label}"}.join(" | ") }

puts "О каком элементе хотите узнать?"
label = STDIN.gets.chomp.capitalize.to_sym
if table.key?(label)
  puts table[label]
else
  puts "Извините, про такой элемент мы еще не знаем."
end
