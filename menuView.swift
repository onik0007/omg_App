//
//  menuView.swift
//  Test
//
//  Created by Kino Porteous on 12/14/20.
//

import SwiftUI
struct menuItems: Identifiable{
    var id: Int
    var name,price,review,tImage,image2: String
}
struct juiceItems: Identifiable{
    var id: Int
    var name,price,review,tImage,image2: String
}
struct sideItems: Identifiable{
    var id: Int
    var name,price,review,tImage,image2: String
}



struct menuView: View {
    
    init() {
        let color = UIColor.red
        let font = UIFont(name: "Georgia-Bold", size: 27)!

        let attributes: [NSAttributedString.Key: AnyObject] = [
            NSAttributedString.Key.font: font,
            NSAttributedString.Key.foregroundColor: color
        ]
        //UINavigationBar.appearance().titleTextAttributes = attributes
        
            //Use this if NavigationBarTitle is with displayMode = .inline
        //UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 27)!]
        UINavigationBar.appearance().titleTextAttributes = attributes

        }
    
    var menuItems:[menuItems]=[
        .init (id:0, name: "JaPotle Bowl", price: "$1000", review: "yum", tImage: "japotle", image2: "jaPotleBowl"),
        .init (id:1, name: "Sweet & Spicy Chicken", price: "$800", review: "yummy", tImage: "spicyChick", image2: "SweetandSpicy")]
    var juiceItems:[juiceItems]=[
        .init (id:0, name: "Pine Juice", price: "$250", review: "yum", tImage: "pineJuice", image2: "pineJuice"),
        .init (id:1, name: "Lemonade", price: "$150", review: "yummy", tImage: "lemonade", image2: "lemonade")]
    var sideItems:[sideItems]=[
        .init (id:0, name: "Walnut Salad", price: "$300", review: "yum", tImage: "walnutSalad", image2: "walnutSalad"),
        .init (id:1, name: "Mixed Vegetable", price: "$150", review: "yummy", tImage: "mixedVeg", image2: "mixedVeg")]
    
    
    var body: some View {
        
        NavigationView{
            List{
                Text("Lunch")
                ForEach(menuItems, id: \.id){
                    menuItem in NavigationLink(destination: lunchInfo(detail: menuItem)) {
                        HStack{
                            Image(menuItem.tImage).resizable().clipShape(Circle()).frame(width: 60, height: 60, alignment: .leading).shadow(radius: 10)
                                
                            Text(menuItem.name).font(.title2).frame(width: 220, height: 60, alignment: .leading)
                            Text(menuItem.price).italic().frame(width: 60, height: 30, alignment: .center).foregroundColor(.orange).border(Color.red, width: 4).cornerRadius(8)
                        }
                    }
                }
                Text("Juice")
                ForEach(juiceItems, id: \.id){
                    menuItem in NavigationLink(destination: juiceInfo(detail: menuItem)) {
                        HStack{
                            Image(menuItem.tImage).resizable().clipShape(Circle()).frame(width: 60, height: 60, alignment: .leading).shadow(radius: 10)
                                
                            Text(menuItem.name).font(.title2).frame(width: 220, height: 60, alignment: .leading)
                            Text(menuItem.price).italic().frame(width: 60, height: 30, alignment: .center).foregroundColor(.orange).border(Color.red, width: 4).cornerRadius(8)
                        }
                    }
                }
                Text("Sides")
                ForEach(sideItems, id: \.id){
                    menuItem in NavigationLink(destination: sideInfo(detail: menuItem)) {
                        HStack{
                            Image(menuItem.tImage).resizable().clipShape(Circle()).frame(width: 60, height: 60, alignment: .leading).shadow(radius: 10)
                            Text(menuItem.name).font(.title2).frame(width: 220, height: 60, alignment: .leading)
                            Text(menuItem.price).italic().frame(width: 60, height: 30, alignment: .center).foregroundColor(.orange).border(Color.red, width: 4).cornerRadius(8)
                        }
                    }
                }
            }.navigationBarTitle(Text("OMG Menu"), displayMode: .inline)
            //.foregroundColor(.white)
        }//.colorScheme(.dark)
    }
}


struct menuView_Previews: PreviewProvider {
    static var previews: some View {
        menuView()
    }
}
