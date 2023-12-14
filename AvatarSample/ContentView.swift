//
//  ContentView.swift
//  AvatarSample
//
//  Created by Ali Hammoud on 14/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State var people = Person.samples
    @State var participants = Person.samples.filter {$0.isParticipant}
    
    var body: some View {
        List{
            Section("Participants") {
                ForEach(participants) { person in
                    AvatarView(person: person)
                        .avatarImageShape(.round)
                }
            }
            Section("Speakers") {
                ForEach(people) { person in
                    AvatarView(person: person)
                }
            }
        }
        .avatarImageShape(.rectangle)
    }
}

#Preview {
    ContentView()
}

