// Functions Playground

// Function with no arguments and returnig void
func funcWithoutArguments() -> Void {
    
    print("go to the shops")
    print("buy 2 cartons of milk")
    print("pay the bill")
    print("come home to papa")
    
}

// Functions with arguments

func funcWithArguments(shopName: String){
    let goToShop = "go to \(shopName)"
    
    print(goToShop)
}

funcWithArguments(shopName: "paala shop")


// Functions with arguments and a return value

func functionWithArgumentsAndReturnValue(enniDaballu: Double) -> Double {
    return enniDaballu * 3.56
}

functionWithArgumentsAndReturnValue(enniDaballu: 5)

