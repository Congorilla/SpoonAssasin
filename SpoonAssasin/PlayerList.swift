//
//  PlayerList.swift
//  SpoonAssasin
//
//  Created by Wang on 2021/4/29.
//

import UIKit

class PlayerList {
    var list: Array<Player> = []
    
    init(list:Array<Player>){
        self.list=list
    }
    
    func getPlayerAt(num:Int) -> Player{
        return list[num]
    }
    
    func replacePlayerAt(num:Int,newplayer:Player){
        list[num] = newplayer
    }
    
    func getAllPlayerNames() -> String{
        var allplayers:String = ""
        for player in list{
            allplayers+=player.getName()+"\n"
        }
        return allplayers
    }
    
    func getAlivePlayerNames() -> String{
        var aliveplayers:String = ""
        for player in list{
            if player.ifAlive() == true{
                aliveplayers+=player.getName()+"\n"
            }
        }
        return aliveplayers
    }
    
    func getDeadPlayerNames() -> String{
        var deadplayers:String = ""
        for player in list{
            if player.ifAlive() == false{
                deadplayers+=player.getName()+"\n"
            }
        }
        return deadplayers
    }
}
