//
//  AvatarView.swift
//  AvatarSample
//
//  Created by Ali Hammoud on 14/12/2023.
//

import SwiftUI

struct AvatarView: View {
    var person: Person
    
    private var titleLabel: some View {
        Text(person.fullName)
            .font(.headline)
    }
    
    private func detailsLabel(_ text: String) -> some View {
        Text(text)
          .font(.subheadline)
    }
    
    var body: some View {
        HStack(alignment: .top){
            Image(person.profileImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 74, height: 75, alignment: .center)
                .clipShape(.circle)
                .accessibilityLabel(person.fullName)
            VStack(alignment: .leading) {
                titleLabel
                detailsLabel(person.jobtitle)
                detailsLabel(person.affiliation)
            }
            Spacer()
        }
        .accessibilityElement(children: .contain)
        .accessibilityLabel(person.fullName)
    }
}


#Preview {
    AvatarView(person: Person.sample)
        .padding()
        .background(.red)
}
