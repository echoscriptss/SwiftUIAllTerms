//
//  First.swift
//  SwiftUIAllTerms
//
//  Created by Yogesh on 7/27/23.
//

import SwiftUI

struct First: View {
//    @State private var textfieldName: String = ""
    @StateObject var objUser: User = User()
    @ObservedObject var userDetail: UserDetails = UserDetails()

    var body: some View {
        NavigationView {
            VStack {
                TextField("Please enter name", text: $objUser.userName).padding()
                NavigationLink("Click to proceed \(objUser.userName)", destination: Second())
            }.navigationTitle("First").navigationBarTitleDisplayMode(.large)

        }.environmentObject(objUser)
            .environmentObject(userDetail)
    }
}

struct First_Previews: PreviewProvider {
    static var previews: some View {
        First()
    }
}
