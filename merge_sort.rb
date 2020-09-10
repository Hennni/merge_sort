def merge_sort(arr)
  return arr if arr.length < 2

  merge(merge_sort(arr[0..(arr.length / 2) - 1]), merge_sort(arr[(arr.length / 2)..(-1)]))
end

def merge(a2, a3)
  result = []
  i2 = 0
  i3 = 0
  until i2 == a2.length || i3 == a3.length do
    if a2[i2] <= a3[i3]
      result << a2[i2]
      i2 += 1
    else
      result << a3[i3]
      i3 += 1
    end
  end
  until i2 >= a2.length do
    result << a2[i2]
    i2 += 1
  end
  until i3 >= a3.length do
    result << a3[i3]
    i3 += 1
  end
  result
end


p merge_sort([5, 3, 2, 6, 4, 1, 8, 7])