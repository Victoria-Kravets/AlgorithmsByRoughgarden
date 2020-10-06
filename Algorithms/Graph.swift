// MARK: - Edge

public class Edge: Equatable {
    public var neighbor: Node
    public var lenght: Int = 1
    
    public init(neighbor: Node) {
        self.neighbor = neighbor
    }
    
    public func addLength(_ lenght: Int) {
        self.lenght = lenght
    }
}

public func == (lhs: Edge, rhs: Edge) -> Bool {
    return lhs.neighbor == rhs.neighbor
}


// MARK: - Node

public class Node: CustomStringConvertible, Equatable {
    public var neighbors: [Edge]
    
    public private(set) var label: String
    public var distance: Int?
    public var visited: Bool
    
    public init(label: String) {
        self.label = label
        neighbors = []
        visited = false
    }
    
    public var description: String {
        if let distance = distance {
            return "Node(label: \(label), distance: \(distance))"
        }
        return "Node(label: \(label), distance: infinity)"
    }
    
    public var hasDistance: Bool {
        return distance != nil
    }
    
    public func remove(edge: Edge) {
        neighbors.remove(at: neighbors.index { $0 === edge }!)
    }
}

public func == (lhs: Node, rhs: Node) -> Bool {
    return lhs.label == rhs.label && lhs.neighbors == rhs.neighbors
}

// MARK: - Graph

public class Graph: CustomStringConvertible, Equatable {
    public private(set) var nodes: [Node]
    
    public init() {
        self.nodes = []
    }
    
    public func addNode(_ label: String) -> Node {
        let node = Node(label: label)
        nodes.append(node)
        return node
    }
    
    public func addEdge(_ source: Node, neighbor: Node, lenght: Int = 1) {
        let edge = Edge(neighbor: neighbor)
        edge.addLength(lenght)
        
        source.neighbors.append(edge)
    }
    
    public var description: String {
        var description = ""
        
        for node in nodes {
            if !node.neighbors.isEmpty {
                description += "[node: \(node.label) edges: \(node.neighbors.map { $0.neighbor.label})]"
            }
        }
        return description
    }
}

public func == (lhs: Graph, rhs: Graph) -> Bool {
    return lhs.nodes == rhs.nodes
}
