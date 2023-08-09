//
//  Second.swift
//  SwiftUIAllTerms
//
//  Created by Yogesh on 7/27/23.
//

import SwiftUI

struct Second: View {
    @EnvironmentObject var objuser: User
    @EnvironmentObject var userdetail: UserDetails
    var body: some View {
        VStack {
            Text("User name = \(objuser.userName)")
            TextField("Please enter department", text: $userdetail.department).padding()
            TextField("Please enter Shift", text: $userdetail.jobshift).padding()
            Button {
                
            } label: {
                Text("Click to Proceed \(userdetail.department) \(userdetail.jobshift)")
            }
            NavigationLink("Click", destination: Third())
        }
    }
}

struct Second_Previews: PreviewProvider {
    static var previews: some View {
        Second().environmentObject(User())
            .environmentObject(UserDetails())
    }
}
