//
//  Modifier.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/25/23.
//

import Foundation
import SwiftUI

struct TitleModifer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundStyle(Color("ColorGreenAdaptive"))
        .padding(8)
    }
}

struct IconModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}
