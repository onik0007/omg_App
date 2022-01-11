//
//  reviewView.swift
//  Test
//
//  Created by Kino Porteous on 12/14/20.
//

import SwiftUI

struct reviewView: View {
    //var detail: menuItems
    
    @State var name: String = ""
    @State var dish: String = ""
    @State var review: String = ""
    @State var rating: Int = 0
    @State var SavedReview = ""
    
    @State private var didSubmit = false
    
    //let ratings = ["sob", "sigh", "silence", "Smirk"]
    
    var body: some View {
        NavigationView{
            VStack{
                //Text("Who are you?")
                Form{
                    TextField("Your Name...", text: $name)
                    TextField("Dish Ordered...", text: $dish)
                    TextField("Review...", text: $review).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    ratingView(rating: $rating)
                    
                    Button(action:{saveData()
                            self.didSubmit.toggle()}){
                        Text("Submit")
                    }.alert(isPresented: $didSubmit) { () -> Alert in
                        Alert(title: Text("Thank You!"))
                    }
                    //Text("\(SavedReview)")
                }
            }.navigationBarTitle(Text("Review"), displayMode: .inline)
        }
    }
    func saveData(){
        UserDefaults.standard.set(self.$review, forKey: "Review")
    }
}

struct reviewView_Previews: PreviewProvider {
    static var previews: some View {
        reviewView()
    }
}
