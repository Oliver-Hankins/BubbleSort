import Foundation

var unsortedStrings = [String]()
while let line = readLine() {
    unsortedStrings.append(line.lowercased())
}


func swap(strings: inout [String], firstIndex:Int, secondIndex:Int) {
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp
}


func bubbleSort(unsortedStrings: [String]) -> [String] {
    var sortingStrings = unsortedStrings

    var totalSwapCount = 0
    var swapCountPerPass: Int
    var passNumber = 0

    print(unsortedStrings)
//    print("Pass: 0, Swaps: 0/0, Array: \(sortingStrings)")

    repeat {
        swapCountPerPass = 0

        for index in 0 ..< unsortedStrings.count - 1 {
            let thisIndex = index
            let nextIndex = index + 1

            let thisElement = sortingStrings[thisIndex]
            let nextElement = sortingStrings[nextIndex]

            if thisElement > nextElement {
                swap(strings: &sortingStrings, firstIndex: thisIndex, secondIndex: nextIndex)

                totalSwapCount += 1
                swapCountPerPass += 1
            }
        }
        passNumber += 1
        
//        print("Pass: \(passNumber), Swaps: \(swapCountPerPass)/\(totalSwapCount), Array: \(sortingStrings)")
    } while swapCountPerPass != 0
    
    return sortingStrings
}

let sortedStrings = bubbleSort(unsortedStrings: unsortedStrings)
print(sortedStrings)
