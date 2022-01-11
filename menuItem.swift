//
//  menuItem.swift
//  Test
//
//  Created by Kino Porteous on 12/16/20.
//

import SwiftUI

struct menuItem: View {
    let otherVC = menuView() //get data from next view
    
    var body: some View {
        //Text(otherVC.prices)
        Text("info")
    }
}

struct menuItem_Previews: PreviewProvider {
    static var previews: some View {
        menuItem()
    }
}
