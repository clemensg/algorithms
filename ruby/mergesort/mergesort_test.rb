require 'mergesort'
require 'minitest/autorun'

class TestMergesort < Minitest::Test
  def test_empty
    assert_equal [], mergesort([])
  end

  def test_presorted
    assert_equal [1, 7, 20, 40], mergesort([1, 7, 20, 40])
  end

  def test_sort
    assert_equal [1, 2, 3, 4], mergesort([4, 2, 1, 3])
  end

  def test_odd_lengths
    assert_equal [5, 9, 14], mergesort([9, 5, 14])
  end

  def test_with_duplicates
    assert_equal [1, 3, 3, 3, 4, 5, 5, 10, 12], mergesort([5, 1, 4, 10, 3, 3, 12, 3, 5])
  end    
end
