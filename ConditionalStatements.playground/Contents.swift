import UIKit

func loveCalculator(yourName: String, theirName: String) -> String {
    
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80 {
      
        return "You love each other like Kanye loves Kanye"
    }
    
    else if loveScore > 40 && loveScore <= 80 {
        
        return "You aight"
    }
    
    return "No love possible, you will die a virgin"
    
}

print(loveCalculator(yourName: "Puli", theirName: "Sharon"))
