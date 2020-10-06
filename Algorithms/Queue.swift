public struct Queue<T> {
  private var array: [T]

  public init() {
    array = []
  }

  public var isEmpty: Bool {
    return array.isEmpty
  }

  public var count: Int {
    return array.count
  }

  public mutating func addElement(_ element: T) {
    array.append(element)
  }

  public mutating func removeElement() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
}

public class Stack<T> {
    
    private var array = [T]()
    
    init() {
        array = []
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public func removeElement() -> T? {
        return array.isEmpty ? nil : array.removeLast()
    }
    
    public func addElement(_ element: T) {
        array.append(element)
    }
}
