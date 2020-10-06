
import Foundation

func depthFirstSearch(_ graph: Graph, source: Node) -> [String] {
    var result: [String] = [source.label]
    source.visited = true
    
    var stack = Stack<Node>()
    stack.addElement(source)
    
    while let node = stack.removeElement() {
        for e in node.neighbors {
            if !e.neighbor.visited {
                depthFirstSearch(graph, source: e.neighbor).forEach{
                    result.append($0)
                    return
                }
                stack.addElement(e.neighbor)
                e.neighbor.visited = true
            }
        }
    }
    
    return result
}

