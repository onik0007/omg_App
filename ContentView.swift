//
//  ContentView.swift
//  Test
//
//  Created by Kino Porteous on 12/13/20.
//

import SwiftUI

struct ContentView: View {
    @State private var toMenu = false
    @State private var toReview = false
    @State private var toContact = false
    @State private var toDeals = false
    
    var body: some View {
        ZStack{
            Image("Ybackground").resizable().ignoresSafeArea().blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            VStack {
                HStack{
                    Button(action: {
                            self.toDeals.toggle()}) {
                        Image("deals").scaleEffect(0.8).frame(width: 100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)}.sheet(isPresented: $toDeals, content: {
                            Text("Today's Deals")
                            //Images etc.
                        })
                    Spacer()
                    Button(action: {
                            self.toContact.toggle()}) {
                        VStack{
                            Image("supportBubble").scaleEffect(0.5).frame(width: 100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)
                        }.sheet(isPresented: $toContact, content: {
                            //contactView()
                            Form{
                                Link("Call us", destination: NSURL(string: "tel://4048831063")!
                                        as URL)
                                Link("OMG Website", destination: URL(string: "https://google.com")!)
                                Link("Contact Us", destination: URL(string: "https://google.com")!)
                            }
                        })
                    }
                }
                Image("logo").resizable().scaleEffect(1)
                Spacer()
                HStack{
                    Button(action: {
                            self.toReview.toggle()}) {
                        VStack{
                            Image("blowhorn")
                            //Text("Review")
                        }
                    }
                    .scaleEffect(0.5).sheet(isPresented: $toReview){
                        //show review
                        reviewView()
                    }
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Button(action: {
                            self.toMenu.toggle()}) {
                        VStack{
                            Image("bLbox")
                            //Text("Menu")
                        }
                    }.sheet(isPresented: $toMenu){
                        //show menu
                        menuView()
                    }
                    .frame(width: 150, height: 150, alignment: .trailing).padding(0)
                }
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
