# The concept of a “collection” in Ruby is pegged to the Enumerable module and the methods it defines on top of each.

# Any class that aspires to be enumerable must have an each method whose job is to yield items to a supplied code block, one at a time.

class Rainbow
  include Enumerable
  def each
    yield "red"
    yield "orange"
    yield "yellow"
    yield "green"
    yield "blue"
    yield "indigo"
    yield "violet"
  end
end

rainbow = Rainbow.new
rainbow.each do |color|
  puts "Next color: #{color}"
end

# => Next color: red
# => Next color: orange
# => Next color: yellow
# => Next color: green
# => Next color: blue
# => Next color: indigo
# => Next color: violet

y_color = rainbow.find { |color| color.starts_with?('y') }
puts "First color starting with 'y' is #{y_color}"

# find works by calling each

Enumerable.instance_methods(false).sort # only the methods defined in the module
# => [:all?, :any?, :chunk, :chunk_while, :collect, :collect_concat, :count, :cycle, :detect, :drop, :drop_while, :each_cons, :each_entry, :each_slice, :each_with_index, :each_with_object, :entries, :find, :find_all, :find_index, :first, :flat_map, :grep, :grep_v, :group_by, :include?, :inject, :lazy, :map, :max, :max_by, :member?, :min, :min_by, :minmax, :minmax_by, :none?, :one?, :partition, :reduce, :reject, :reverse_each, :select, :slice_after, :slice_before, :slice_when, :sort, :sort_by, :sum, :take, :take_while, :to_a, :to_h, :uniq, :zip]

