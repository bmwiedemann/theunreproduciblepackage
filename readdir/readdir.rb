#!/usr/bin/ruby
puts Dir.glob("in/*")
puts Dir.children("in/")
puts Dir.entries("in/")
# See also: .foreach .each .each_child .read

# Find with:
# egrep -r 'Dir\.(glob|children|entries|foreach|each|read)' .

# Fix with:
# puts Dir.entries("in/").sort
