import UIKit

let arrayOfNumbers = [1, 2, 3, 4, 5, 6 , 7]

let doubledArr = arrayOfNumbers.map({number in number * 2})


// The arguments can also have an inside parameter name - this is too fancy
// If the function name is already descriptive enough, just name the outer argument _, this eliminates the use of the name when the function is being called
func beerSong(_ totalBeerCount: Int) -> String {
    var lyrics: String = ""
    
    for number in (1...totalBeerCount).reversed() {
        
        let newLine = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number - 1) bottles of beer on the wall.\n"
        lyrics += newLine
    }
    
    let lastLine = "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall."
    
    return lyrics + lastLine
}


func fibonacci(maxNumber: Int) -> Array<Int> {
    
    if maxNumber <= 0 {
        return []
    }
    
    var reqArr = [0, 1]
    
    if maxNumber > 0 && maxNumber <= 2 {
        return reqArr
    }
    
    repeat	{
        let nextNumber = reqArr.last! + reqArr[reqArr.count - 2]
        reqArr.append(nextNumber)
        
    } while reqArr.count <= maxNumber
    
    print(reqArr.map({number in "\(number)"}).joined(separator: " "))
    
    return reqArr
    
}
