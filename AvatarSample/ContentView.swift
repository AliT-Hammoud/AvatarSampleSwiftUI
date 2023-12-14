//
//  ContentView.swift
//  AvatarSample
//
//  Created by Ali Hammoud on 14/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State var people = Person.samples
    
    var body: some View {
        List(people){ person in
            HStack(alignment: .top){
                Image(person.profileImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 74, height: 75, alignment: .center)
                    .clipShape(.circle)
                VStack(alignment: .leading) {
                    Text(person.fullName)
                        .font(.headline)
                    Text(person.jobtitle)
                        .font(.subheadline)
                    Text(person.affiliation)
                        .font(.subheadline)
                }
            }
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
