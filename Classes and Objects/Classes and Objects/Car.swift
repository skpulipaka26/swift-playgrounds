//
//  Car.swift
//  Classes and Objects
//
//  Created by Pulipaka Sai Krishna on 10/10/18.
//  Copyright © 2018 Pulipaka Sai Krishna. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case HatchBack
}

class Car {
    
    var color: String = "Black"
    var numOfSeats: Int = 5
    var typeOfCar: CarType = .Coupe
    
    
    convenience init(customerChosenColor: String) {
        self.init()
        color = customerChosenColor
    }
    
    func drive() {
        print("car is moving")
    }
    
}
