// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

let STDIN = (readLine(strippingNewline: true))?.split {$0 == " "}.map (String.init)

func insertionSort(_ array: [String]) {
    var pass = 0
    var swapTotal = 0
    var swaps = 0
    var a = array                             
    for x in 1..<a.count {                    
        var y = x
        while y > 0 && a[y] < a[y - 1] {
            (a[y], a[y-1]) = (a[y-1], a[y])
            y -= 1
            swapTotal += 1
            swaps += 1
        }
        pass += 1
        print("Pass: \(pass), Swaps: \(swaps)/\(swapTotal), Array: \(a)")
        swaps = 0
    }
}

print("Pass: 0, Swaps: 0/0, Array: \(STDIN!)")
insertionSort(STDIN!)
