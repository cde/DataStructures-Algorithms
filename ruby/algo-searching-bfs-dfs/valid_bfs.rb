
def is_valid_bsf(root)
  return true if root.nil?

  queue = []
  prev =  Float::INFINITY
  current_node = root

  while current_node || !queue.empty?
    while current_node
      queue.push(current_node)
      current_node = current_node.left
    end
    current_node = queue.pop()
    puts "prev #{prev} current_node.val #{current_node.val}"
    puts "prev > current_node.val #{prev > current_node.val}"

    return false if current_node.val && prev > current_node.val

    prev = current_node.val
    current_node = current_node.right
  end
  true
end


# [1,1]
require('./tree')
tree = deserialize([2,1,3])
puts tree.inspect
puts is_valid_bsf(tree)