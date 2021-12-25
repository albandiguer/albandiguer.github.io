---
layout: post
title: 'Code kata #2 in ruby'
date: 2013-10-13 12:38
comments: true
categories:
published: true
---

# [Code katas Serie] Karate Chop.

I have been curious to try and implement a [code kata](http://codekatas.org/about.aspx) just to see how valuable it is.

## What is it ?

It is all about reinventing the wheel, as fast as you can. You are meant to implement a well-known problem or game and repeat it until you are fast and satisfied enough of the solution. The Karate Chop for example is no more, no less than the infamous [binary search algorithm](http://en.wikipedia.org/wiki/Binary_search_algorithm). It comes with a simple spec file, here :

```ruby
def test_chop
  assert_equal(-1, chop(3, []))
  assert_equal(-1, chop(3, [1]))
  assert_equal(0,  chop(1, [1]))
  assert_equal(0,  chop(1, [1, 3, 5]))
  assert_equal(1,  chop(3, [1, 3, 5]))
  assert_equal(2,  chop(5, [1, 3, 5]))
  assert_equal(-1, chop(0, [1, 3, 5]))
  assert_equal(-1, chop(2, [1, 3, 5]))
  assert_equal(-1, chop(4, [1, 3, 5]))
  assert_equal(-1, chop(6, [1, 3, 5]))
  assert_equal(0,  chop(1, [1, 3, 5, 7]))
  assert_equal(1,  chop(3, [1, 3, 5, 7]))
  assert_equal(2,  chop(5, [1, 3, 5, 7]))
  assert_equal(3,  chop(7, [1, 3, 5, 7]))
  assert_equal(-1, chop(0, [1, 3, 5, 7]))
  assert_equal(-1, chop(2, [1, 3, 5, 7]))
  assert_equal(-1, chop(4, [1, 3, 5, 7]))
  assert_equal(-1, chop(6, [1, 3, 5, 7]))
  assert_equal(-1, chop(8, [1, 3, 5, 7]))
end
```

## Here is my go

[Second implementation](https://vimeo.com/76784295) fast forwarded 2 times.
Outputs:

```ruby
class Karate

  def chop(target, values)
    return -1 if values.empty?
    return -1 if target < values[0] || target > values[-1]
    return 0 if values.size == 1

    reduce_values = values.reduce(target)
    chopped_reduced = chop(target, reduce_values)

    return chopped_reduced  == -1 ?
      -1 :
      values.reduce_index(target) + chopped_reduced
  end

private

  Array.class_eval do
    def median
      median_index = size / 2 - 1
      ArrayElement.new(median_index, self[median_index])
    end

    def reduce(target)
      target <= median.value ?
        slice(0..median.index) :
        slice(median.index + 1..-1)
    end

    def reduce_index(target)
      target <= median.value ? 0 : median.index + 1
    end
  end

  class ArrayElement <  Struct.new(:index, :value)
  end

end


#$ 1 runs, 19 assertions, 0 failures, 0 errors, 0 skips
```

## Thoughts

Interesting exercice, not really common to repeat the same kind of algorithms with an intended short delay.
Repeating, even only twice, unveils improvements to the solution.
A third implementation would use a new Poro with a reference on the values instead of a nasty `class_eval` on `Array`.
Something like

```ruby

class BinarySearch

    def initialize(array)
        @array = array
    end

    def median; ...;end
    def reduce(target); ...; end
    #...
end

```
