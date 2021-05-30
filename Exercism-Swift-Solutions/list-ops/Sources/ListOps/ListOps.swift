struct ListOps {
    static func append<Type>(_ a: [Type], _ b: [Type]) -> [Type] {
        return a + b
    }
    
    static func concat<Type>(_ args: [Type]...) -> [Type] {
        var output: [Type] = []
        
        for arg in args {
            output += arg
        }
        
        return output
    }
    
    static func filter<Type>(_ input: [Type], predicate: (Type) -> Bool) -> [Type] {
        var output: [Type] = []
        
        for element in input {
            if predicate(element) {
                output.append(element)
            }
        }
        
        return output
    }
    
    static func length<Type>(_ input: [Type]) -> Int {
        var length = 0
        
        for _ in input {
            length += 1
        }
        
        return length
    }
    
    static func map<Type, OutType>(_ input: [Type], mapFn: (Type) -> OutType) -> [OutType] {
        var output: [OutType] = []
        
        for element in input {
            let newValue = mapFn(element)
            output.append(newValue)
        }
        
        return output
    }
    
    static func foldLeft<Type>(_ input: [Type], accumulated: Type, combine: (Type, Type) -> Type) -> Type {
        var folded = accumulated
        
        for element in input {
            folded = combine(folded, element)
        }
        
        return folded
    }
    
    static func foldRight<Type>(_ input: [Type], accumulated: Type, combine: (Type, Type) -> Type) -> Type {
        var folded = accumulated
        let reversed = reverse(input)
        
        for element in reversed {
            folded = combine(element, folded)
        }
        
        return folded
    }
    
    static func reverse<Type>(_ input: [Type]) -> [Type] {
        var input = input
        var reversed: [Type] = []
        
        while input.count > 0 {
            reversed.append(input.removeLast())
        }
        
        return reversed
    }
}
