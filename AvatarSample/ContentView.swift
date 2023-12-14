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
            AvatarView(person: person)
        }
    }
}

#Preview {
    ContentView()
}

