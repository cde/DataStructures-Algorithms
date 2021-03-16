function isValidBST (root){
    if (!root) return true;

    let queue = []
    let prev = Number.MIN_SAFE_INTEGER
    //-Infinity

    let currentNode = root

    while(currentNode || queue.length > 0) {
        while(currentNode) {
            queue.push(currentNode)
            currentNode = currentNode.left
        }
        currentNode = queue.pop()
        if(prev >= currentNode.value) return false
        prev = currentNode.value
        currentNode = currentNode.right
    }
    return true
}

function isValidBSTRecursive( min = -Infinity, max = Infinity){
    if (!root) return true
    if(root.value >= max || root.value <= min){
        return false
    }
    isValidBSTRecursive(root.left, min, root.value) && isValidBSTRecursive(root.right, root.value, max)
}

const BinarySearchTree = require('../ds-trees/binaryTree')
const tree = new BinarySearchTree();
tree.insert(9)
tree.insert(4)
tree.insert(6)
tree.insert(20)
tree.insert(170)
tree.insert(15)
tree.insert(1)

console.log(isValidBST(tree))