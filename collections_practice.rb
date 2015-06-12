require 'pry'
def sort_array_asc(array)
#sort an array in ascending order

array.sort
end


def sort_array_desc(array)
#sory array in desc. order
  array.sort do |a,b|
    b <=> a
  end

end


def swap_elements(array)
  second = array[1]
  third = array[2]

  array[1] = third
  array[2] = second
  array
end

def reverse_array(array)
array.reverse
end

def kesha_maker(array)
  array.each do |element|
      element[2] = "$"

  end
end


def greater_and_less_than_10(array)
  new_hash = {"greater_than_10" => [],
    "less_than_10" => []}
  array.each do |element|
    if element > 10
      new_hash["greater_than_10"] << element
    else
      new_hash["less_than_10"] << element
    end

  end
    new_hash
end



def find_winners(hash)
  return_array = []
    hash.each do |index, value|
      if value == "winner"
        return_array << index
      end
    end
  return_array
end

def find_a(array)
  return_array = []
    array.each do |element|
      if element[0] == "a"
        return_array << element
      end
    end
  return_array
end

def sum_array(array)
  value = 0

      array.each do |element|
        value += element
      end
      value

end



def add_s(array)

  new_array = array.map do |element|
    element << "s"

  end
   new_array[1] = new_array[1].chomp("s")
   new_array
end


def count_words(string)

words_array = string.split(" ")
 
my_hash = Hash.new(0)
words_array.each { |word| my_hash[word] += 1 }
# index_word
my_hash
end


def organize_songs_by_artist(songs)
  return_hash = Hash.new
  songs.each do |artist_and_song|
    split_array = artist_and_song.split(" - ")
    artist = split_array.first
    song = split_array.last
    if return_hash.has_key?(artist)
      return_hash[artist] << song
    else
      return_hash[artist] = [song]
    end
  end #end incoming_hash DO block
  return_hash
end #end method
