//
//  AppView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/25/23.
//

import SwiftUI

struct AppView: View {
    
    @State var tabSelect = 0
    var body: some View {
        TabView(selection: $tabSelect){
            MatchaView()
                .tabItem {
                    if tabSelect == 0{
                        Image("leaf")
                    }
                    else{
                        Image("leaf_off")
                    }
                    Text("Matcha")
                }.tag(0)
            RecipeView()
                .tabItem {
                    if tabSelect == 1{
                        Image("recipe")
                    }
                    else{
                        Image("recipe_off")
                    }
                    Text("Recipe")
                }.tag(1)
            GradesView()
                .tabItem {
                    if tabSelect == 2{
                        Image("whisk")
                    }
                    else{
                        Image("whisk_off")
                    }
                    Text("Grades")
                }.tag(2)
            AboutView()
                .tabItem {
                    if tabSelect == 3{
                        Image("about")
                    }
                    else{
                        Image("about_off")

                    }
                    Text("App")
                }.tag(3)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .accentColor(.primary)
    }
}

#Preview {
    AppView()
}
