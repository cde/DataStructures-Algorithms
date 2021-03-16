class TreeNode
  def initialize(value = nil)
    @val = value
    @left = nil
    @right = nil
  end

  attr_accessor :val
  attr_accessor :left
  attr_accessor :right
end


# DO NOT EDIT
# generate tree from array
def deserialize(arr)
  return nil if arr.empty?

  root = TreeNode.new(arr[0])
  queue = [root]
  i = 1
  while i < arr.length
    current = queue.shift()
    unless arr[i].nil?
      current.left = TreeNode.new(arr[i])
      queue.push(current.left)
    end
    if !arr[i + 1].nil? && i + 1 < arr.length
      current.right = TreeNode.new(arr[i + 1])
      queue.push(current.right)
    end
    i += 2
  end
  root
end