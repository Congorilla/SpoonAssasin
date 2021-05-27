//
//  ContentView.swift
//  SpoonAssasin
//
//  Created by Wang on 2021/3/27.
//

import SwiftUI
import Firebase

struct ContentView: View {
   @State var ref: DatabaseReference!
        var body: some View {
        NavigationView{
            VStack{
                Text("YOUR TARGET: \nLedi Wang")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
                    .padding()
                NavigationLink(
                    destination:
                        VStack{
                            Text("rule no.1: xxxxxxxx\nrule no.2:xxxx\nrule no.3: xxxxxxxxxx").fontWeight(.bold).foregroundColor(Color.black).padding()
                            
                        }.background(Image("parchment"))){
                    ZStack{
                        Image("folded scroll").resizable().frame(width: 120.0, height: 40.0)
                        Text("Rules").fontWeight(.bold).foregroundColor(Color.white).padding()
                    }
                }
                NavigationLink(
                    destination:
                        VStack{
                            Text("Players Alive: \nJonathon\nJoseph\nMike\nSteve\nTommy").fontWeight(.bold).foregroundColor(Color.black).padding()
                            
                        }.background(Image("parchment"))){
                    ZStack{
                        Image("folded scroll").resizable().frame(width: 150.0, height: 45.0)
                        Text("Players Alive").fontWeight(.bold).foregroundColor(Color.white).padding()
                    }
                }
                NavigationLink(
                    destination:
                        VStack{
                            Text("Bob\nCatharine\nLouis\nAnn\nSammy").fontWeight(.bold).foregroundColor(Color.black).padding()
                            
                        }.background(Image("parchment"))){
                    ZStack{
                        Image("folded scroll").resizable().frame(width: 150.0, height: 45.0)
                        Text("Players Dead").fontWeight(.bold).foregroundColor(Color.white).padding()
                    }
                }
                NavigationLink(
                    destination:
                        VStack{
                            Text("Are you sure you want to quit the game?").fontWeight(.bold).foregroundColor(Color.black).padding()
                            Button("Yes", action:
                           //test
                                {
                                ref=Database.database().reference()
                                ref.childByAutoId().setValue("John\nRim\nSandy\nVan")//end
                            })
                        }.background(Image("parchment"))){
                    ZStack{
                        Image("folded scroll").resizable().frame(width: 150.0, height: 45.0)
                        Text("I'm Killed").fontWeight(.bold).foregroundColor(Color.white).padding()
                    }
                }
            }.frame(width: 5000
                    , height: 8000).background(Color.black)
        }.navigationTitle("Nav")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}





