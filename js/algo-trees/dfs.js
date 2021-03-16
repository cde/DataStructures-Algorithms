const dfsPre = (node) => {
    // parent first
    if(!node) { return [] }
    let result = []

    function traverse(currentNode) {
        if(!currentNode) return
        result.push(currentNode.value)
        traverse(currentNode.left)
        traverse(currentNode.right)
    }
    traverse(node)
    return result
}

const dfsInOrder = (node) => {
    if(!node) { return [] }
    let result = []

    function traverse(currentNode) {
        if(!currentNode) return
        traverse(currentNode.left)
        result.push(currentNode.value)
        traverse(currentNode.right)
    }
    traverse(node)
    return result
}

const dfsPostOrder = (node) => {
    // children before parent.
    if(!node) { return [] }
    let result = []

    function traverse(currentNode) {
        if(!currentNode) return
        traverse(currentNode.left)
        traverse(currentNode.right)
        result.push(currentNode.value)
    }
    traverse(node)
    return result
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

//     9
//  4     20
//1  6  15  170
console.log(dfsPre(tree.root))
console.log(dfsInOrder(tree.root))
console.log(dfsPostOrder(tree.root))