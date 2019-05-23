fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
    biggest = [arr[0]]
    arr.each_with_index do |fish, idx1|
        arr.each_with_index do |more_fish, idx2|

            if idx2 > idx1
                if fish.length > more_fish.length && fish.length > biggest[0].length
                    biggest.shift
                    biggest << fish
                end
            end

        end
    end
    biggest
end

def dominant_octopus(arr)
    return arr if arr.length <= 1
    mid = arr.length/2
    left = arr[0...mid]
    right = arr[mid..-1]

    final_array = merge_helper(dominant_octopus(left), dominant_octopus(right))
    final_array[-1]
    

end

def merge_helper(left, right)
neutral_array = []

    until left.empty? || right.empty?
        if left[0].length < right[0].length
            neutral_array << left[0]
            left.shift
        else
            neutral_array << right[0]
            right.shift
        end
    end
neutral_array + left + right

end


def clever_octopus(arr)
    # biggest = []
    biggest = arr.shift
    arr.each do |ele|
        if ele.length > biggest.length
            biggest = ele 
        end
    end
    biggest

end

# dominant_octopus(fish_array)

def slow_dance(str, tiles_arr)
    arr.each_with_index do |ele, idx|
        if str == ele
            return idx
        end
    end
end

