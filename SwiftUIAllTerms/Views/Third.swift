//
//  Third.swift
//  SwiftUIAllTerms
//
//  Created by Yogesh on 7/27/23.
//

import SwiftUI

struct Third: View {
    @EnvironmentObject var objUserDetail: UserDetails
    @EnvironmentObject var objuser: User

    var body: some View {
        Text("All Values - \(objuser.userName) \(objUserDetail.jobshift) \(objUserDetail.department)")
    }
}

struct Third_Previews: PreviewProvider {
    static var previews: some View {
        Third().environmentObject(UserDetails())
            .environmentObject(User())
    }
}
