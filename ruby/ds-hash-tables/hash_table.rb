class HashTable
  attr_accessor :data

  def initialize(size = 1)
    @data = Array.new(size)
  end

  def hash(key)
    hash = 0
    key.split('').each_with_index do |char, i|
      hash = (hash + char.ord * i)  % @data.length
    end
    hash
  end

  def set(key, value)
    address = hash(key)
    @data[address] = [] if !@data[address]

    @data[address].push(key,value)
    @data
  end

  def get(key)
    address = hash(key)
    current_bucket = @data[address]
    if current_bucket
      current_bucket.map do |elem|
        elem[1] if elem[0] == key
      end
    end
    return nil
  end
end

ht = HashTable.new(10)
ht.set('grapes', 10000)
ht.set('apples', 9)
ht.set('apples', 19)
ht.set('apples', 39)
puts(ht.get('apples'))
