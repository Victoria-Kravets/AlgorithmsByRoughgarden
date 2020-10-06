

func breadthFirstSearch(_ graph: Graph, source: Node) -> [String] {
    var result: [String] = [source.label]
    source.visited = true
    
    var queue = Queue<Node>()
    queue.addElement(source)
    
    while let node = queue.removeElement() {
        for e in node.neighbors {
            if !e.neighbor.visited {
                queue.addElement(e.neighbor)
                e.neighbor.visited = true
                result.append(e.neighbor.label)
            }
        }
    }
    
    return result
}

