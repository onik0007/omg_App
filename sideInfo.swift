//
//  sideInfo.swift
//  Test
//
//  Created by Kino Porteous on 1/11/21.
//

import SwiftUI

struct sideInfo: View {
    var detail: sideItems
    
    var body: some View {
        VStack{
            Text(detail.name)
                .underline()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(8)
            
            Image(detail.image2).resizable().frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).cornerRadius(50)
            
            Button(action: {
                print("addded to cart")
                //Moltin.sharedinstance().card
            }){
                Image(systemName: "cart")
                Text("Add to cart")
            }
            .frame(width: 150, height: 50, alignment: .center)
            //.padding(.all)
            .background(Color.green)
            .foregroundColor(.black)
            .cornerRadius(20)
            Spacer()
            
        }
    }
}
