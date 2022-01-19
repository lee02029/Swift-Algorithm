//
//  BSTManual.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2022/01/19.
//

import Foundation
import XCTest

class Node {
    var key: Int = 0
    var left: Node?
    var right:Node?
    
    init(_ key: Int) {
        self.key = key
    }
    var min: Node {
        if left == nil {
            return self
        } else {
            return left!.min
        }
    }
}

class BST {
    var root: Node?
    
    func insert(key: Int) {
        root = insertItem(root, key)
    }
    
    private func insertItem(_ node: Node?, _ key: Int) -> Node {
        guard let node = node else {
            let node = Node(key)
            return node
        }
        if key < node.key {
            node.left = insertItem(node.left, key)
        }
        if key > node.key {
            node.right = insertItem(node.right, key)
        }
        // If we get here we have have hit the bottom of our tree with a duplicate.
        // Since duplicates are not allowed in BSTs, simply ignore the duplicate,
        // and return our fully constructed tree. We are done!
        return node;
    }
    
    func find(key: Int) -> Int? {
        guard let root = root else {return nil}
        guard let node = find(root, key) else { return nil}
        
        return node.key
    }
    
    private func find(_ node: Node?, _ key: Int) -> Node? {
        guard let node = node else { return nil}
        
        if node.key == key {
            return node
        } else if key < node.key {
            return find(node.left,key)
        } else if key > node.key {
            return find(node.right, key)
        }
        return nil
        // Note: duplicate keys not allowed so don't need to check
    }
    
    func findMin() -> Int {
        guard let root = root else { return 0}
        return findMin(root).key;
    }
    
    private func findMin(_ node: Node) -> Node {
        return node.min;
    }
    
    // Delete: Three cases
    // 1. No child
    // 2. One child
    // 3. Two children

    // First two are simple. Third is more complex.

    // Case 1: No child - simply remove from tree by nulling it.
    //
    // Case 2: One child - copy the child to the node to be deleted and delete the child

    // Case 3: Two children - re-gig the tree to turn into a Case 1 or a Case 2

    // For third case we first need to
    // 1. Find the right side min
    // 2. Copy it to the node we want to delete (creating a duplicate)
    // 3. Then delete the min value way down on the branch we just copied
    //
    // This works because you can represent a binary tree in more than one way.
    // Here we are taking advantage of that fact to make our more complicated
    // 3rd case delete more simple by transforming it into case 1.
    
    func delete(key: Int) {
        guard let _ = root else { return }
        root = delete(&root, key);
    }
    
    private func delete(_ node: inout Node?, _ key: Int) -> Node? {
        guard let nd = node else { return nil}
        
        if key < nd.key{
            nd.left = delete(&nd.left, key)
        } else if key > nd.key {
            nd.right = delete(&nd.right, key)
        } else {
            // Woohoo! Found you. This is the node we want to delete.

            // Case 1: No child
            if nd.left == nil && nd.right == nil {
                node = nil
            }
            
            // Case 2: One child
            else if nd.left == nil {
                node = nd.right
            }
            else if nd.right == nil {
                node = nd.left
            }
            
            // Case 3 = Two children
            else {
                // Find the minimum node on the right (could also find max on the left)
                let minRight = findMin(nd.right!)
                
                // Duplicate it by copying its value here
                node!.key = minRight.key
                
                // Now go ahead and delete the node we just duplicated (same key)
                node!.right = delete(&node!.right, node!.key)
            }
        }
        
        return nil
    }
    
    func prettyPrint() {
        // Hard code print for tree depth = 3
        let rootLeftKey = root?.left == nil ? 0 : root?.left?.key
        let rootRightKey = root?.right == nil ? 0 : root?.right?.key
        
        var rootLeftLeftKey = 0
        var rootLeftRightKey = 0
        
        if root?.left != nil {
            rootLeftLeftKey = root?.left?.left == nil ? 0 : root?.left?.left?.key as! Int
            rootLeftRightKey = root?.left?.right == nil ? 0 : root?.left?.right?.key as! Int

        }
        
        var rootRightLeftKey = 0
        var rootRightRightKey = 0
        
        if root?.right != nil {
            rootRightLeftKey = root?.right?.left == nil ? 0 : root?.right?.left?.key as! Int
            rootRightRightKey = root?.right?.right == nil ? 0 : root?.right?.right?.key as! Int
        }
        
        let str = """
                      \(root!.key)
                    /  \\
                   \(rootLeftKey!)    \(rootRightKey!)
                  / \\  / \\
                 \(rootLeftLeftKey)  \(rootLeftRightKey) \(rootRightLeftKey)   \(rootRightRightKey)
        """

        print(str)

    }
    
    /*
            1
           / \
          2   3
     
     Three ways to walk depth first:
     - inorder (L > Root > R) 213 Good if there is inherit order smallest > largest (Left > Right)
     - preorder (Root > L > R) 123 Good for copying and expression tress (Top > Bottom)
     - postorder (L > R > Root) 231 Bottom up used in deletes (Bottom > Up)
     
     */
    
    func printInOrderTravseral() { inOrderTraversal(node: root) }
    
    func inOrderTraversal(node: Node?){
        guard let node = node else { return }
        inOrderTraversal(node: node.left)
        print(node.key)
        inOrderTraversal(node: node.right)
    }
    
    func printPostOrderTravseral() { preOrderTraversal(node: root) }
    
    func preOrderTraversal(node: Node?){
        guard let node = node else { return}
        print(node.key)
        preOrderTraversal(node: node.left)
        preOrderTraversal(node: node.right)
    }
    
    func printPostOrderTravseral() { postOrderTraversal(node: root)}
    
    func postOrderTraversal(node: Node?) {
        guard let node = node else { return }
        postOrderTraversal(node: node.left)
        postOrderTraversal(node: node.right)
        print(node.key)
    }
}

class BSTTests: XCTestCase {
    var bst: BST!
    override func setup() {
        super.setUp()
        bst = BST()
    }
    
    func testInsert() {
        bst.insert(key: 5)
        bst.insert(key: 3)
        bst.insert(key: 2)
        bst.insert(key: 4)
        bst.insert(key: 7)
        bst.insert(key: 6)
        bst.insert(key: 8)
        
        bst.prettyPrint()
        
        XCTAssertNotNil(bst.find(key: 5))
    }
    
    func testDeleteNoChild() {
        bst.insert(key: 5)
        bst.insert(key: 3)
        bst.insert(key: 2)
        bst.insert(key: 4)
        bst.insert(key: 7)
        bst.insert(key: 6)
        bst.insert(key: 8)
        
        XCTAssertNotNil(bst.find(key: 2))
        bst.delete(key: 2)
        XCTAssertNil(bst.find(key: 2))
    }

    func testDeleteOneChild() {
        bst.insert(key: 5)
        bst.insert(key: 3)
        bst.insert(key: 2)
        bst.insert(key: 4)
        bst.insert(key: 7)
        bst.insert(key: 6)
//        bst.insert(key: 8)
        
        bst.delete(key: 7)
        XCTAssertNil(bst.find(key: 7))
    }

    func testDeleteTwoChildren() {
        bst.insert(key: 5)
        bst.insert(key: 3)
        bst.insert(key: 2)
        bst.insert(key: 4)
        bst.insert(key: 7)
        bst.insert(key: 6)
        bst.insert(key: 8)
        
        bst.delete(key: 7)
        XCTAssertNil(bst.find(key: 7))
        XCTAssertNotNil(6)
        XCTAssertNotNil(8)
    }
}

// Infrastructure for running unit tests

class TestObserver: NSObject, XCTestObervation {
    func testCase(_ testCase: XCTestCase,
                  didFailWithDescription description: String,
                  infile filePath: String?,
                  atLine lineNumber: Int) {
        assertionFailure(description, line: UInt(lineNumber))
    }
}
let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)
BSTTests.defaultTestSuite.run()
