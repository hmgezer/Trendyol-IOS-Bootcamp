//Solution goes in Sources


public enum BinarySearchError: Error {
    case unsorted
}
struct BinarySearch {
    let list: [Int]
    
    var middle : Int {
       return list.count > 0 ?  (list.count - 1)/2 : 0
        }
    init(_ list: [Int]) throws {
            guard list == list.sorted() else  {
                throw BinarySearchError.unsorted
            }

            self.list = list
        }
    
    func searchFor(_ number: Int) -> Int? {
            var start = 0
            var listSize = list.count - 1
            
            while start <= listSize {
                let middle = start + (listSize - start) / 2
                
                // Check if number is present at middle
                if list[middle] == number {
                    return middle
                
                // if number is greater, ignore left half
                } else if list[middle] < number {
                    start = middle + 1
                
                // if number is smaller, ignore right half
                } else {
                    listSize = middle - 1
                }
            }
            
            // element not present
            return nil
        }
}
