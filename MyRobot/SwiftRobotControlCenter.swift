//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//  All robot commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
    
    //  Level name setup
    override func viewDidLoad() {
        levelName = "L4H" //  Level name
        super.viewDidLoad()
    }
    
    override func run() {
        
        zebra()
        
    }
    
    // start block functions
    
    func zebra () {
        
        let l = 6 // count of lines L55H - 5, L4H - 6
        let c = 16 // count of candy L55H - 14, L4H - 16
        
        for _ in 0..<l {
            for _ in 0..<c {
                putAndGo()
            }
            nextLineJump()
        }

        
    }
    
    func putAndGo() {
        put()
        if frontIsClear {
            move()
        }
    }
    
    func nextLineJump() {
        if facingRight {
            turnRight()
            jump()
            turnRight()
        }
        else if facingLeft{
            turnLeft()
            jump()
            turnLeft()
        }
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
    
    func jump(){
        if facingDown, frontIsClear {
            move()
        }
        if facingDown, frontIsClear {
            move()
        }
    }
    
    // end functions
    
} // End controller

// test commit git hub ))) - 

