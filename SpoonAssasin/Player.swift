//
//  Player.swift
//  SpoonAssasin
//
//  Created by Wang on 2021/4/28.
//

import UIKit

class Player{
    var name:String
    var alive:Bool
    
    init(name:String,alive:Bool){
        self.name = name
        self.alive = alive
    }
    
    func getName() -> String{
        return name
    }
    
    func setName(newname:String){
        name = newname
    }
    
    func ifAlive() -> Bool{
        return alive
    }
    
    func kill(){
        alive = false
    }
    
    func revive(){
        alive = true
    }
}
