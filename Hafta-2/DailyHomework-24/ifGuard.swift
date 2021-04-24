struct Pencil {
    var type: String?
    var color: String?
    var count: Int?
}
// IF LET

func getPencil (value: Pencil){
    if let type = value.type, let color = value.color, let count = value.count {
        print(type)
        print(color)
        print(count)
    }else{
        print("Bu tipte bir kalem bulunamadı..")
    }
}
var pencil = Pencil(type: "Boya", color: "Mavi", count: 5)
getPencil(value: pencil)

// GUARD LET

func newGetPencil(value: Pencil){
    guard let type = value.type, let color = value.color, let count = value.count else{
        print("Bu tipte bir kalem bulunamadı..")
        return
    }
    print(type)
    print(color)
    print(count)
}
var newPencil = Pencil(type: "Kurşun", color: "Siyah", count: 3)
newGetPencil(value: newPencil)
