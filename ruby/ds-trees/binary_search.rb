class Node
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
  attr_accessor :left, :right, :value
end

class BinarySearchTree
  attr_accessor :root, :size

  def initialize
    @root = nil
    @size = 0
  end

  def insert(value)
    node = Node.new(value)
    if root.nil?
      self.root = node
      self.size += 1
      return
    end
    parent = nil
    current_node = root
    until current_node.nil?
      parent = current_node
      current_node = value < parent.value ? parent.left : parent.right
    end

    if parent.value > value
      parent.left = node
    else
      parent.right = node
    end
    self.size += 1
  end

  def lookup(value)
    return false if root.nil?

    current_node = root
    until current_node.nil?
      return current_node if current_node.value == value

      current_node = value > current_node.value ?  current_node.right : current_node.left
    end
    nil
  end

  def delete(value)
    current_node = root
    parent_node = nil

    while current_node
      if value < current_node.value
        parent_node = current_node
        current_node = current_node.left
      elsif value > current_node.value
        parent_node = current_node
        current_node = current_node.right
      elsif value == current_node.value
        if current_node.right.nil?
          if parent_node.nil?
            self.root = current_node.left
          else
            if current_node.value < parent_node.value
              parent_node.left = current_node.left
            elsif current_node.value > parent_node.value
              parent_node.right = current_node.left
            end
          end
        elsif current_node.left.nil?
          if parent_node.nil?
            self.root = current_node.right
          else
            if current_node.value < parent_node.value
              parent_node.left = current_node.right
            elsif current_node.value > parent_node.value
              parent_node.right = current_node.right
            end
          end
        else
          left_most = current_node.right.left;
          left_most_parent = current_node.right;
          until left_most.left.nil?
            left_most_parent = left_most
            left_most = leftmost.left
          end


          # Parent's left subtree is now leftmost's right subtree
          left_most_parent.left = left_most.right;
          left_most.left = current_node.left;
          left_most.right = current_node.right;

          if parent_node.nil?
            self.root = left_most;
          else
            if current_node.value < parent_node.value
              parent_node.left = left_most;
            elsif current_node.value > parent_node.value
              parent_node.right = left_most;
            end
          end
        end
      end
    end
    return true
  end


end

tree = BinarySearchTree.new
tree.insert(9)
tree.insert(4)
tree.insert(6)
tree.insert(20)
tree.insert(170)

# puts tree.lookup(5).inspect

tree.delete(20)

puts tree.inspect
