//Solution goes in Sources
enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}

struct CircularBuffer<T> {
    let capacity: Int
    var internalArray: [T] = []
    
    mutating func write(_ element: T) throws {
        if internalArray.count >= capacity { throw CircularBufferError.bufferFull }
        internalArray.append(element)
    }
    
    mutating func read() throws -> T {
        if internalArray.isEmpty { throw CircularBufferError.bufferEmpty }
        return internalArray.remove(at: 0)
    }

    mutating func overwrite(_ element: T) {
        if !internalArray.isEmpty && internalArray.count >= self.capacity {
            internalArray.remove(at: 0)
        }
        internalArray.append(element)
    }

    mutating func clear() {
        internalArray.removeAll()
    }
    
    init(capacity: Int) {
        self.capacity = capacity
    }
}
