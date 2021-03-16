def bfs(root)
  queue = []
  list = []

  queue.push(root)
  until queue.empty?
    current_node = queue.pop
    list.push(current_node.value)

    queue.push(current_node.left) if current_node.left
    queue.push(current_node.right) if current_node.right
  end
  list
end
require('./tree')
tree = deserialize([2,1,3])
puts tree.inspect
puts is_valid_bsf(tree)
